import {
  Component,
  OnInit,
  ChangeDetectorRef
} from '@angular/core';

import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { State } from '../../../core/models/state.model';
import { StateService } from '../../../core/services/state.service';

import {
  ActivatedRoute,
  Router
} from '@angular/router';

import { CandidateProfile } from '../../../core/models/candidate-profile.model';

import {
  CandidateProfileService
} from '../../../core/services/candidate-profile.service';

@Component({
  selector: 'app-candidate-form',
  standalone: true,
  imports: [
    CommonModule,
    FormsModule
  ],
  templateUrl: './candidate-form.html',
  styleUrl: './candidate-form.css'
})
export class CandidateForm implements OnInit {

  candidateId: number | null = null;
  isEditMode = false;
states: State[] = [];
  isLoading = false;
  errorMessage = '';
  successMessage = '';

  candidate: CandidateProfile = {
    fullName: '',
    email: ''
  };

  constructor(
    private candidateService: CandidateProfileService,
    private router: Router,
    private route: ActivatedRoute,
    private cdr: ChangeDetectorRef,
    private stateService: StateService,


  ) {}

  ngOnInit(): void {
    this.loadStates();
    const id = this.route.snapshot.paramMap.get('id');

    if (id) {

      this.candidateId = Number(id);
      this.isEditMode = true;

      this.loadCandidate(this.candidateId);
    }
  }

  loadCandidate(id: number): void {

    this.isLoading = true;
    this.errorMessage = '';

    this.candidateService
      .getCandidateById(id)
      .subscribe({

        next: (data) => {

          this.candidate = {
            ...data
          };

          this.isLoading = false;

          this.cdr.detectChanges();
        },

        error: (error) => {

          console.error(
            'Error loading candidate:',
            error
          );

          this.errorMessage =
            error?.status === 404
              ? 'Candidate profile not found.'
              : 'Unable to load candidate profile.';

          this.isLoading = false;

          this.cdr.detectChanges();
        }
      });
  }
loadStates(): void {

  this.stateService.getAllStates().subscribe({

    next: (data) => {

      this.states = data;

      this.cdr.detectChanges();
    },

    error: (error) => {

      console.error(
        'Error loading states:',
        error
      );

      this.errorMessage =
        'Unable to load states.';
    }
  });
}
  onSubmit(): void {

    this.errorMessage = '';
    this.successMessage = '';

    if (!this.candidate.fullName?.trim()) {

      this.errorMessage =
        'Full name is required.';

      return;
    }

    if (!this.candidate.email?.trim()) {

      this.errorMessage =
        'Email is required.';

      return;
    }

    this.isLoading = true;

    const request =
      this.isEditMode && this.candidateId
        ? this.candidateService.updateCandidate(
            this.candidateId,
            this.candidate
          )
        : this.candidateService.createCandidate(
            this.candidate
          );

    request.subscribe({

      next: (response) => {

        this.candidate = {
          ...response
        };

        this.isLoading = false;

        this.successMessage =
          this.isEditMode
            ? 'Candidate profile updated successfully.'
            : 'Candidate profile created successfully.';

        this.cdr.detectChanges();

        setTimeout(() => {

          this.router.navigate([
            '/ums/candidates'
          ]);

        }, 700);
      },

      error: (error) => {

        console.error(
          'Error saving candidate:',
          error
        );

        this.isLoading = false;

        if (error?.status === 400) {

          this.errorMessage =
            'Invalid candidate information.';

        } else if (error?.status === 401) {

          this.errorMessage =
            'Your session has expired. Please login again.';

        } else if (error?.status === 403) {

          this.errorMessage =
            'You do not have permission to perform this action.';

        } else if (error?.status === 409) {

          this.errorMessage =
            'A candidate with this email already exists.';

        } else {

          this.errorMessage =
            'Unable to save candidate profile.';
        }

        this.cdr.detectChanges();
      }
    });
  }

  cancel(): void {

    this.router.navigate([
      '/ums/candidates'
    ]);
  }

  get pageTitle(): string {

    return this.isEditMode
      ? 'Edit Candidate'
      : 'Add Candidate';
  }

  get pageDescription(): string {

    return this.isEditMode
      ? 'Update candidate personal, contact and professional information.'
      : 'Create a new candidate profile.';
  }
}