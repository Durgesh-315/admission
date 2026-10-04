
import {
  Component,
  OnInit,
  ChangeDetectorRef
} from '@angular/core';

import {
  CommonModule
} from '@angular/common';

import {
  FormsModule
} from '@angular/forms';

import {
  ActivatedRoute,
  Router
} from '@angular/router';

import {
  EmployeeService
} from '../../../core/services/employee.service';

import {
  Employee
} from '../../../core/models/employee.model';


@Component({
  selector: 'app-user-form',

  standalone: true,

  imports: [
    CommonModule,
    FormsModule
  ],

  templateUrl: './user-form.html',

  styleUrl: './user-form.css'
})
export class UserForm implements OnInit {

  // =====================================================
  // EDIT MODE
  // =====================================================

  employeeId: number | null = null;

  isEditMode = false;


  // =====================================================
  // EMPLOYEE FIELDS
  // =====================================================

  fullName = '';

  email = '';

  password = '';

  age: number | null = null;

  gender = '';

  department = '';

  skills: string[] = [];

  employmentType = '';

  active = true;

  joiningDate = '';

  address = '';


  // =====================================================
  // FILES
  // =====================================================

  profileImage: File | null = null;

  resume: File | null = null;


  // Existing files from database

  existingProfileImage = '';

  existingResume = '';


  // =====================================================
  // UI STATE
  // =====================================================

  isLoading = false;

  errorMessage = '';

  successMessage = '';


  // =====================================================
  // OPTIONS
  // =====================================================

  availableSkills = [

    'Java',
    'Angular',
    'React',
    'Python',
    'SQL',
    'Spring Boot',
    'JavaScript',
    'Azure',
    'AWS',
    'Databricks'

  ];


  departments = [

    'IT',
    'HR',
    'Finance',
    'Sales',
    'Marketing',
    'Operations'

  ];


  // =====================================================
  // CONSTRUCTOR
  // =====================================================

  constructor(

    private employeeService: EmployeeService,

    private router: Router,

    private route: ActivatedRoute,

    private cdr: ChangeDetectorRef

  ) {}


  // =====================================================
  // INITIALIZATION
  // =====================================================

  ngOnInit(): void {

    console.log(
      '========== USER FORM INITIALIZED =========='
    );


    const id = this.route.snapshot.paramMap.get('id');


    // ---------------------------------------------------
    // EDIT MODE
    // ---------------------------------------------------

    if (id) {

      this.employeeId = Number(id);

      this.isEditMode = true;

      console.log(
        'EDIT MODE - Employee ID:',
        this.employeeId
      );

      this.loadEmployee(this.employeeId);

    }

    // ---------------------------------------------------
    // ADD MODE
    // ---------------------------------------------------

    else {

      console.log(
        'ADD MODE'
      );

      this.isEditMode = false;

    }

  }


  // =====================================================
  // LOAD EMPLOYEE FOR EDIT
  // =====================================================

  loadEmployee(id: number): void {

    console.log(
      '========== LOADING EMPLOYEE FOR EDIT =========='
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
            '========== EMPLOYEE LOADED =========='
          );

          console.log(
            'Employee:',
            employee
          );


          // ---------------------------------------------
          // FILL FORM
          // ---------------------------------------------

          this.fullName =
            employee.fullName || '';

          this.email =
            employee.email || '';

          this.password =
            employee.password || '';

          this.age =
            employee.age ?? null;

          this.gender =
            employee.gender || '';

          this.department =
            employee.department || '';

          this.skills =
            employee.skills
              ? [...employee.skills]
              : [];

          this.employmentType =
            employee.employmentType || '';

          this.active =
            employee.active ?? true;

          this.joiningDate =
            employee.joiningDate || '';

          this.address =
            employee.address || '';


          // ---------------------------------------------
          // EXISTING FILES
          // ---------------------------------------------

          this.existingProfileImage =
            employee.profileImage || '';

          this.existingResume =
            employee.resume || '';


          this.isLoading = false;


          console.log(
            'Form populated successfully'
          );


          console.log(
            'isLoading:',
            this.isLoading
          );


          this.cdr.detectChanges();

        },


        error: (error) => {

          console.error(
            '========== LOAD EMPLOYEE ERROR =========='
          );

          console.error(
            error
          );


          this.isLoading = false;

          this.errorMessage =
            'Unable to load employee details.';


          this.cdr.detectChanges();

        }

      });

  }


  // =====================================================
  // SKILLS
  // =====================================================

  toggleSkill(skill: string): void {

    if (this.skills.includes(skill)) {

      this.skills =
        this.skills.filter(
          s => s !== skill
        );

    }

    else {

      this.skills = [

        ...this.skills,

        skill

      ];

    }

  }


  isSkillSelected(skill: string): boolean {

    return this.skills.includes(skill);

  }


  // =====================================================
  // PROFILE IMAGE
  // =====================================================

  onProfileImageSelected(
    event: Event
  ): void {

    const input =
      event.target as HTMLInputElement;


    if (
      input.files &&
      input.files.length > 0
    ) {

      this.profileImage =
        input.files[0];


      console.log(
        'Profile image selected:',
        this.profileImage.name
      );

    }

  }


  // =====================================================
  // RESUME
  // =====================================================

  onResumeSelected(
    event: Event
  ): void {

    const input =
      event.target as HTMLInputElement;


    if (
      input.files &&
      input.files.length > 0
    ) {

      this.resume =
        input.files[0];


      console.log(
        'Resume selected:',
        this.resume.name
      );

    }

  }


  // =====================================================
  // SUBMIT
  // =====================================================

  onSubmit(): void {

    console.log(
      '========== FORM SUBMITTED =========='
    );


    this.errorMessage = '';

    this.successMessage = '';


    // ===================================================
    // VALIDATION
    // ===================================================

    if (!this.fullName.trim()) {

      this.errorMessage =
        'Please enter employee name.';

      return;

    }


    if (!this.email.trim()) {

      this.errorMessage =
        'Please enter employee email.';

      return;

    }


    if (!this.password.trim()) {

      this.errorMessage =
        'Please enter employee password.';

      return;

    }


    if (!this.age) {

      this.errorMessage =
        'Please enter employee age.';

      return;

    }


    if (!this.gender) {

      this.errorMessage =
        'Please select gender.';

      return;

    }


    if (!this.department) {

      this.errorMessage =
        'Please select department.';

      return;

    }


    if (!this.employmentType) {

      this.errorMessage =
        'Please select employment type.';

      return;

    }


    if (!this.joiningDate) {

      this.errorMessage =
        'Please select joining date.';

      return;

    }


    if (!this.address.trim()) {

      this.errorMessage =
        'Please enter address.';

      return;

    }


    // ===================================================
    // EDIT
    // ===================================================

    if (
      this.isEditMode &&
      this.employeeId
    ) {

      this.updateEmployee();

      return;

    }


    // ===================================================
    // ADD
    // ===================================================

    this.createEmployee();

  }


  // =====================================================
  // CREATE EMPLOYEE
  // =====================================================

  createEmployee(): void {

    console.log(
      '========== ADD EMPLOYEE =========='
    );


    // ---------------------------------------------
    // FILE VALIDATION
    // ---------------------------------------------

    if (!this.profileImage) {

      this.errorMessage =
        'Please select a profile image.';

      return;

    }


    if (!this.resume) {

      this.errorMessage =
        'Please select a resume.';

      return;

    }


    // ---------------------------------------------
    // FORM DATA
    // ---------------------------------------------

    const formData =
      new FormData();


    formData.append(
      'fullName',
      this.fullName
    );


    formData.append(
      'email',
      this.email
    );


    formData.append(
      'age',
      this.age!.toString()
    );


    formData.append(
      'department',
      this.department
    );


    formData.append(
      'gender',
      this.gender
    );


    this.skills.forEach(
      skill => {

        formData.append(
          'skills',
          skill
        );

      }
    );


    formData.append(
      'employmentType',
      this.employmentType
    );


    formData.append(
      'joiningDate',
      this.joiningDate
    );


    formData.append(
      'address',
      this.address
    );


    formData.append(
      'password',
      this.password
    );


    formData.append(
      'active',
      this.active.toString()
    );


    formData.append(
      'profileImage',
      this.profileImage
    );


    formData.append(
      'resume',
      this.resume
    );


    this.isLoading = true;


    this.employeeService
      .createEmployeeWithFiles(formData)
      .subscribe({

        next: (response) => {

          console.log(
            '========== EMPLOYEE CREATED =========='
          );

          console.log(
            response
          );


          this.isLoading = false;

          this.successMessage =
            'Employee created successfully.';


          setTimeout(() => {

            this.router.navigate([
              '/ums/users'
            ]);

          }, 800);

        },


        error: (error) => {

          console.error(
            '========== CREATE EMPLOYEE ERROR =========='
          );

          console.error(
            error
          );


          this.isLoading = false;


          this.handleApiError(
            error,
            'create'
          );

        }

      });

  }


  // =====================================================
  // UPDATE EMPLOYEE
  // =====================================================

  // updateEmployee(): void {

  //   if (!this.employeeId) {

  //     return;

  //   }


  //   console.log(
  //     '========== UPDATE EMPLOYEE =========='
  //   );


  //   console.log(
  //     'Employee ID:',
  //     this.employeeId
  //   );


  //   const employee: Employee = {

  //     id: this.employeeId,

  //     fullName:
  //       this.fullName,

  //     email:
  //       this.email,

  //     password:
  //       this.password,

  //     age:
  //       this.age!,

  //     gender:
  //       this.gender,

  //     department:
  //       this.department,

  //     skills:
  //       [...this.skills],

  //     employmentType:
  //       this.employmentType,

  //     active:
  //       this.active,

  //     joiningDate:
  //       this.joiningDate,

  //     address:
  //       this.address,

  //     profileImage:
  //       this.existingProfileImage,

  //     resume:
  //       this.existingResume

  //   };


  //   console.log(
  //     'Updated employee:',
  //     employee
  //   );


  //   this.isLoading = true;


  //   this.employeeService
  //     .updateEmployee(
  //       this.employeeId,
  //       employee
  //     )
  //     .subscribe({

  //       next: (response) => {

  //         console.log(
  //           '========== EMPLOYEE UPDATED =========='
  //         );

  //         console.log(
  //           'Response:',
  //           response
  //         );


  //         this.isLoading = false;

  //         this.successMessage =
  //           'Employee updated successfully.';


  //         // ------------------------------------------------
  //         // NOTE:
  //         // Newly selected files are not uploaded during
  //         // edit yet. Existing files are preserved.
  //         // ------------------------------------------------

  //         setTimeout(() => {

  //           this.router.navigate([
  //             '/ums/users'
  //           ]);

  //         }, 800);

  //       },


  //       error: (error) => {

  //         console.error(
  //           '========== UPDATE EMPLOYEE ERROR =========='
  //         );

  //         console.error(
  //           error
  //         );


  //         this.isLoading = false;


  //         this.handleApiError(
  //           error,
  //           'update'
  //         );

  //       }

  //     });

  // }

updateEmployee(): void {

  if (!this.employeeId) {
    return;
  }

  console.log(
    '========== UPDATE EMPLOYEE =========='
  );

  const formData = new FormData();

  formData.append(
    'fullName',
    this.fullName
  );

  formData.append(
    'email',
    this.email
  );

  formData.append(
    'password',
    this.password
  );

  formData.append(
    'age',
    this.age!.toString()
  );

  formData.append(
    'gender',
    this.gender
  );

  formData.append(
    'department',
    this.department
  );

  this.skills.forEach(skill => {

    formData.append(
      'skills',
      skill
    );

  });

  formData.append(
    'employmentType',
    this.employmentType
  );

  formData.append(
    'active',
    this.active.toString()
  );

  formData.append(
    'joiningDate',
    this.joiningDate
  );

  formData.append(
    'address',
    this.address
  );

  // Only send profile image if user selected a new one

  if (this.profileImage) {

    formData.append(
      'profileImage',
      this.profileImage
    );

  }

  // Only send resume if user selected a new one

  if (this.resume) {

    formData.append(
      'resume',
      this.resume
    );

  }

  this.isLoading = true;

  this.employeeService
    .updateEmployeeWithFiles(
      this.employeeId,
      formData
    )
    .subscribe({

      next: (response) => {

        console.log(
          '========== EMPLOYEE UPDATED =========='
        );

        console.log(
          'Response:',
          response
        );

        this.isLoading = false;

        this.successMessage =
          'Employee updated successfully.';

        this.cdr.detectChanges();

        setTimeout(() => {

          this.router.navigate([
            '/ums/users'
          ]);

        }, 800);

      },

      error: (error) => {

        console.error(
          '========== UPDATE EMPLOYEE ERROR =========='
        );

        console.error(error);

        this.isLoading = false;

        this.handleApiError(
          error,
          'update'
        );

      }

    });

}
  // =====================================================
  // API ERROR
  // =====================================================

  handleApiError(
    error: any,
    operation: 'create' | 'update'
  ): void {

    if (error.status === 400) {

      this.errorMessage =
        'Invalid employee data. Please check the form.';

    }

    else if (error.status === 401) {

      this.errorMessage =
        'Your session has expired. Please login again.';

    }

    else if (error.status === 403) {

      this.errorMessage =
        'You do not have permission to perform this operation.';

    }

    else if (error.status === 404) {

      this.errorMessage =
        'Employee not found.';

    }

    else if (error.status === 0) {

      this.errorMessage =
        'Unable to connect to the server.';

    }

    else {

      this.errorMessage =
        operation === 'create'
          ? 'Unable to create employee. Please try again.'
          : 'Unable to update employee. Please try again.';

    }


    this.cdr.detectChanges();

  }


  // =====================================================
  // CANCEL
  // =====================================================

  cancel(): void {

    this.router.navigate([
      '/ums/users'
    ]);

  }

}
