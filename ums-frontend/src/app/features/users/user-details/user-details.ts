
import {
  Component,
  OnInit,
  ChangeDetectorRef
} from '@angular/core';

import {
  ActivatedRoute,
  Router
} from '@angular/router';

import {
  DomSanitizer,
  SafeUrl
} from '@angular/platform-browser';

import { EmployeeService } from '../../../core/services/employee.service';
import { Employee } from '../../../core/models/employee.model';


@Component({
  selector: 'app-user-details',
  standalone: true,
  templateUrl: './user-details.html',
  styleUrl: './user-details.css'
})
export class UserDetails implements OnInit {


  // =====================================================
  // COMPONENT STATE
  // =====================================================

  employee: Employee | null = null;

  isLoading = true;

  errorMessage = '';

  profileImageUrl: SafeUrl | null = null;

  resumeUrl: SafeUrl | null = null;


  constructor(
    private employeeService: EmployeeService,
    private route: ActivatedRoute,
    private router: Router,
    private sanitizer: DomSanitizer,
    private cdr: ChangeDetectorRef
  ) {}


  // =====================================================
  // INITIALIZE
  // =====================================================

  ngOnInit(): void {

    console.log(
      '========== USER DETAILS INITIALIZED =========='
    );


    const id = Number(
      this.route.snapshot.paramMap.get('id')
    );


    console.log(
      'Employee ID:',
      id
    );


    if (!id) {

      this.errorMessage =
        'Invalid employee ID.';

      this.isLoading = false;

      this.cdr.detectChanges();

      return;
    }


    this.loadEmployee(id);

  }


  // =====================================================
  // LOAD EMPLOYEE
  // =====================================================

  loadEmployee(id: number): void {

    console.log(
      '========== LOADING EMPLOYEE =========='
    );

    console.log(
      'Employee ID:',
      id
    );


    this.isLoading = true;

    this.errorMessage = '';


    this.employeeService
      .getEmployeeById(id)
      .subscribe({

        next: (employee: Employee) => {

          console.log(
            '========== EMPLOYEE RECEIVED =========='
          );

          console.log(
            'Employee:',
            employee
          );


          // Store employee
          this.employee = employee;


          // Stop loading
          this.isLoading = false;


          console.log(
            'Employee state:',
            this.employee
          );

          console.log(
            'isLoading:',
            this.isLoading
          );


          // Force UI update
          this.cdr.detectChanges();


          // Load profile image
          if (employee.profileImage) {

            this.loadProfileImage(
              employee.profileImage
            );

          }


          // Load resume
          if (employee.resume) {

            this.loadResume(
              employee.resume
            );

          }

        },


        error: (error) => {

          console.error(
            '========== EMPLOYEE DETAILS ERROR =========='
          );

          console.error(
            'Error:',
            error
          );

          console.error(
            'Status:',
            error.status
          );


          this.errorMessage =
            'Unable to load employee details.';

          this.isLoading = false;


          this.cdr.detectChanges();

        }

      });

  }


  // =====================================================
  // LOAD PROFILE IMAGE
  // =====================================================

  loadProfileImage(
    filename: string
  ): void {

    console.log(
      '========== LOADING PROFILE IMAGE =========='
    );


    this.employeeService
      .getEmployeeFile(filename)
      .subscribe({

        next: (blob: Blob) => {

          console.log(
            'Profile image loaded successfully'
          );


          const objectUrl =
            URL.createObjectURL(blob);


          this.profileImageUrl =
            this.sanitizer
              .bypassSecurityTrustUrl(
                objectUrl
              );


          this.cdr.detectChanges();

        },


        error: (error) => {

          console.error(
            'Profile image loading failed:',
            error
          );

        }

      });

  }


  // =====================================================
  // LOAD RESUME
  // =====================================================

  loadResume(
    filename: string
  ): void {

    console.log(
      '========== LOADING RESUME =========='
    );


    this.employeeService
      .getEmployeeFile(filename)
      .subscribe({

        next: (blob: Blob) => {

          console.log(
            'Resume loaded successfully'
          );


          const objectUrl =
            URL.createObjectURL(blob);


          this.resumeUrl =
            this.sanitizer
              .bypassSecurityTrustUrl(
                objectUrl
              );


          this.cdr.detectChanges();

        },


        error: (error) => {

          console.error(
            'Resume loading failed:',
            error
          );

        }

      });

  }


  // =====================================================
  // BACK
  // =====================================================

  goBack(): void {

    console.log(
      'Going back to employees'
    );


    this.router.navigate([
      '/ums/users'
    ]);

  }


  // =====================================================
  // EDIT
  // =====================================================

  editEmployee(): void {

    if (!this.employee?.id) {

      return;

    }


    console.log(
      'Editing employee:',
      this.employee.id
    );


    this.router.navigate([
      '/ums/users',
      this.employee.id,
      'edit'
    ]);

  }

}