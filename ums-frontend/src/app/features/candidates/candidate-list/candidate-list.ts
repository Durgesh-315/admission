import {
  Component,
  ChangeDetectorRef,
  OnInit
} from '@angular/core';

import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';

import { CandidateProfile } from '../../../core/models/candidate-profile.model';
import { CandidateProfileService } from '../../../core/services/candidate-profile.service';

@Component({
  selector: 'app-candidate-list',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './candidate-list.html',
  styleUrl: './candidate-list.css'
})
export class CandidateList implements OnInit {

  candidates: CandidateProfile[] = [];
  filteredCandidates: CandidateProfile[] = [];

  searchText = '';
  selectedCategory = '';

  isLoading = false;
  errorMessage = '';

  currentPage = 1;
  pageSize = 5;

  sortColumn: keyof CandidateProfile | '' = '';
  sortDirection: 'asc' | 'desc' = 'asc';

  constructor(
    private candidateService: CandidateProfileService,
    private router: Router,
    private cdr: ChangeDetectorRef
  ) {}

  ngOnInit(): void {
    this.loadCandidates();
  }

  loadCandidates(): void {
    this.isLoading = true;
    this.errorMessage = '';

    this.candidateService.getAllCandidates().subscribe({
      next: (data) => {
        this.candidates = data || [];
        this.filteredCandidates = [...this.candidates];

        this.currentPage = 1;
        this.isLoading = false;

        this.applyFilters();

        this.cdr.detectChanges();
      },

      error: (error) => {
        console.error('Error loading candidates:', error);

        this.errorMessage =
          error?.status === 401
            ? 'Your session has expired. Please login again.'
            : 'Unable to load candidate profiles.';

        this.isLoading = false;
        this.cdr.detectChanges();
      }
    });
  }

  applyFilters(): void {
    const search = this.searchText
      .trim()
      .toLowerCase();

    this.filteredCandidates = this.candidates.filter(candidate => {

      const matchesSearch =
        !search ||
        (candidate.fullName || '')
          .toLowerCase()
          .includes(search) ||
        (candidate.email || '')
          .toLowerCase()
          .includes(search) ||
        (candidate.mobileNo || '')
          .toLowerCase()
          .includes(search) ||
        (candidate.city || '')
          .toLowerCase()
          .includes(search) ||
        (candidate.state || '')
          .toLowerCase()
          .includes(search) ||
        (candidate.category || '')
          .toLowerCase()
          .includes(search);

      const matchesCategory =
        !this.selectedCategory ||
        candidate.category === this.selectedCategory;

      return matchesSearch && matchesCategory;
    });

    this.currentPage = 1;
  }

  clearFilters(): void {
    this.searchText = '';
    this.selectedCategory = '';
    this.applyFilters();
  }

  get categories(): string[] {
    return Array.from(
      new Set(
        this.candidates
          .map(candidate => candidate.category)
          .filter(
            (category): category is string =>
              !!category
          )
      )
    ).sort();
  }

  sortBy(column: keyof CandidateProfile): void {

    if (this.sortColumn === column) {
      this.sortDirection =
        this.sortDirection === 'asc'
          ? 'desc'
          : 'asc';
    } else {
      this.sortColumn = column;
      this.sortDirection = 'asc';
    }

    this.filteredCandidates.sort((a, b) => {

      const valueA = a[column] ?? '';
      const valueB = b[column] ?? '';

      const comparison =
        String(valueA)
          .toLowerCase()
          .localeCompare(
            String(valueB).toLowerCase()
          );

      return this.sortDirection === 'asc'
        ? comparison
        : -comparison;
    });
  }

  get paginatedCandidates(): CandidateProfile[] {

    const start =
      (this.currentPage - 1) * this.pageSize;

    return this.filteredCandidates.slice(
      start,
      start + this.pageSize
    );
  }

  get totalPages(): number {
    return Math.max(
      1,
      Math.ceil(
        this.filteredCandidates.length /
        this.pageSize
      )
    );
  }

  nextPage(): void {
    if (this.currentPage < this.totalPages) {
      this.currentPage++;
    }
  }

  previousPage(): void {
    if (this.currentPage > 1) {
      this.currentPage--;
    }
  }

  addCandidate(): void {
    this.router.navigate([
      '/ums/candidates/add'
    ]);
  }

  viewCandidate(id: number | undefined): void {
    if (!id) {
      return;
    }

    this.router.navigate([
      '/ums/candidates',
      id
    ]);
  }

  editCandidate(id: number | undefined): void {
    if (!id) {
      return;
    }

    this.router.navigate([
      '/ums/candidates',
      id,
      'edit'
    ]);
  }

  deleteCandidate(candidate: CandidateProfile): void {

    if (!candidate.id) {
      return;
    }

    const confirmed = confirm(
      `Are you sure you want to delete ${candidate.fullName}?`
    );

    if (!confirmed) {
      return;
    }

    this.candidateService
      .deleteCandidate(candidate.id)
      .subscribe({
        next: () => {

          this.candidates =
            this.candidates.filter(
              item => item.id !== candidate.id
            );

          this.applyFilters();
          this.cdr.detectChanges();
        },

        error: (error) => {
          console.error(
            'Error deleting candidate:',
            error
          );

          this.errorMessage =
            'Unable to delete candidate profile.';

          this.cdr.detectChanges();
        }
      });
  }

  goToDashboard(): void {
    this.router.navigate([
      '/ums/dashboard'
    ]);
  }

  getInitials(
    name: string | null | undefined
  ): string {
    if (!name) {
      return '?';
    }

    return name
      .trim()
      .charAt(0)
      .toUpperCase();
  }
}