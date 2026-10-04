import {
  Component,
  OnInit,
  ChangeDetectorRef
} from '@angular/core';

import { CommonModule } from '@angular/common';

import {
  ActivatedRoute,
  Router
} from '@angular/router';

import { CandidateProfile } from '../../../core/models/candidate-profile.model';

import {
  CandidateProfileService
} from '../../../core/services/candidate-profile.service';

@Component({
  selector: 'app-candidate-details',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './candidate-details.html',
  styleUrl: './candidate-details.css'
})
export class CandidateDetails implements OnInit {

  candidate: CandidateProfile | null = null;

  isLoading = false;
  errorMessage = '';

  constructor(
    private candidateService: CandidateProfileService,
    private route: ActivatedRoute,
    private router: Router,
    private cdr: ChangeDetectorRef
  ) {}

  ngOnInit(): void {

    const id =
      Number(this.route.snapshot.paramMap.get('id'));

    if (!id) {
      this.errorMessage =
        'Invalid candidate ID.';
      return;
    }

    this.loadCandidate(id);
  }

  loadCandidate(id: number): void {

    this.isLoading = true;

    this.candidateService
      .getCandidateById(id)
      .subscribe({

        next: (data) => {

          this.candidate = data;
          this.isLoading = false;

          this.cdr.detectChanges();
        },

        error: (error) => {

          console.error(
            'Error loading candidate:',
            error
          );

          this.errorMessage =
            'Unable to load candidate profile.';

          this.isLoading = false;

          this.cdr.detectChanges();
        }
      });
  }

  editCandidate(): void {

    if (!this.candidate?.id) {
      return;
    }

    this.router.navigate([
      '/ums/candidates',
      this.candidate.id,
      'edit'
    ]);
  }

  goBack(): void {

    this.router.navigate([
      '/ums/candidates'
    ]);
  }
}