import {
  Component,
  OnInit,
  ChangeDetectorRef
} from '@angular/core';

import { Router } from '@angular/router';
import { FormsModule } from '@angular/forms';

import { EmployeeService } from '../../../core/services/employee.service';
import { Employee } from '../../../core/models/employee.model';

@Component({
  selector: 'app-user-list',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './user-list.html',
  styleUrl: './user-list.css'
})
export class UserList implements OnInit {

  employees: Employee[] = [];

  filteredEmployees: Employee[] = [];

  searchText = '';

  selectedDepartment = '';

  isLoading = true;

  errorMessage = '';


  // =====================================================
  // PAGINATION
  // =====================================================

  currentPage = 1;

  pageSize = 5;


  // =====================================================
  // SORTING
  // =====================================================

  sortColumn: keyof Employee | '' = '';

  sortDirection: 'asc' | 'desc' = 'asc';


  constructor(
    private employeeService: EmployeeService,
    private router: Router,
    private cdr: ChangeDetectorRef
  ) {}

  ngOnInit(): void {

    console.log('========== USER LIST INITIALIZED ==========');

    this.loadEmployees();
  }


  // =====================================================
  // LOAD EMPLOYEES
  // =====================================================

  loadEmployees(): void {

    console.log('========== USER LIST: LOADING EMPLOYEES ==========');

    this.isLoading = true;

    this.errorMessage = '';

    this.employeeService.getAllEmployees().subscribe({

      next: (employees: Employee[]) => {

        console.log(
          '========== USER LIST: EMPLOYEES RECEIVED =========='
        );

        console.log('Employees:', employees);

        console.log('Count:', employees.length);

        this.employees = employees;

        this.filteredEmployees = [...employees];

        this.currentPage = 1;

        this.isLoading = false;

        console.log('isLoading:', this.isLoading);

        console.log(
          'filteredEmployees:',
          this.filteredEmployees
        );

        // Force Angular UI update
        this.cdr.detectChanges();
      },

      error: (error) => {

        console.error(
          '========== USER LIST ERROR =========='
        );

        console.error('Error:', error);

        console.error('Status:', error.status);

        console.error('URL:', error.url);

        this.isLoading = false;

        this.errorMessage =
          'Unable to load employees. Please try again.';

        this.cdr.detectChanges();
      }

    });
  }


  // =====================================================
  // SEARCH + DEPARTMENT FILTER
  // =====================================================

  filterEmployees(): void {

    const search =
      this.searchText
        .trim()
        .toLowerCase();

    this.filteredEmployees =
      this.employees.filter((employee: Employee) => {

        const matchesSearch =
          !search ||
          employee.fullName
            .toLowerCase()
            .includes(search) ||

          employee.email
            .toLowerCase()
            .includes(search) ||

          employee.department
            .toLowerCase()
            .includes(search);

        const matchesDepartment =
          !this.selectedDepartment ||
          employee.department ===
            this.selectedDepartment;

        return (
          matchesSearch &&
          matchesDepartment
        );
      });

    // Reset to first page after filtering
    this.currentPage = 1;

    // Keep current sorting after filtering
    this.applySorting();

    console.log(
      'Filtered employees:',
      this.filteredEmployees
    );

    this.cdr.detectChanges();
  }


  // =====================================================
  // SORT EMPLOYEES
  // =====================================================

  sortEmployees(column: keyof Employee): void {

    if (this.sortColumn === column) {

      this.sortDirection =
        this.sortDirection === 'asc'
          ? 'desc'
          : 'asc';

    } else {

      this.sortColumn = column;

      this.sortDirection = 'asc';

    }

    this.applySorting();

    this.cdr.detectChanges();
  }


  // =====================================================
  // APPLY SORTING
  // =====================================================

  applySorting(): void {

    if (!this.sortColumn) {
      return;
    }

    const column = this.sortColumn;

    this.filteredEmployees.sort((a, b) => {

      let valueA = a[column];

      let valueB = b[column];


      // Handle strings
      if (typeof valueA === 'string') {

        valueA = valueA.toLowerCase();

      }

      if (typeof valueB === 'string') {

        valueB = valueB.toLowerCase();

      }


      if (valueA === valueB) {
        return 0;
      }


      if (valueA === undefined || valueA === null) {
        return this.sortDirection === 'asc'
          ? -1
          : 1;
      }


      if (valueB === undefined || valueB === null) {
        return this.sortDirection === 'asc'
          ? 1
          : -1;
      }


      if (valueA < valueB) {

        return this.sortDirection === 'asc'
          ? -1
          : 1;

      }


      if (valueA > valueB) {

        return this.sortDirection === 'asc'
          ? 1
          : -1;

      }


      return 0;

    });
  }


  // =====================================================
  // PAGINATION
  // =====================================================

  get totalPages(): number {

    return Math.max(
      1,
      Math.ceil(
        this.filteredEmployees.length / this.pageSize
      )
    );
  }


  get paginatedEmployees(): Employee[] {

    const startIndex =
      (this.currentPage - 1) * this.pageSize;

    const endIndex =
      startIndex + this.pageSize;

    return this.filteredEmployees.slice(
      startIndex,
      endIndex
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


  // =====================================================
  // DEPARTMENTS
  // =====================================================

  get departments(): string[] {

    return [
      ...new Set(
        this.employees
          .map(employee => employee.department)
          .filter(Boolean)
      )
    ];
  }


  // =====================================================
  // ADD EMPLOYEE
  // =====================================================

  addEmployee(): void {

    console.log(
      'Navigating to Add Employee'
    );

    this.router.navigate([
      '/ums/users/add'
    ]);
  }


  // =====================================================
  // VIEW EMPLOYEE
  // =====================================================

  viewEmployee(id: number): void {

    console.log(
      'Viewing employee:',
      id
    );

    this.router.navigate([
      '/ums/users',
      id
    ]);
  }


  // =====================================================
  // EDIT EMPLOYEE
  // =====================================================

  editEmployee(id: number): void {

    console.log(
      'Editing employee:',
      id
    );

    this.router.navigate([
      '/ums/users',
      id,
      'edit'
    ]);
  }


  // =====================================================
  // DELETE EMPLOYEE
  // =====================================================

  deleteEmployee(employee: Employee): void {

    if (!employee.id) {

      console.error(
        'Employee ID is missing'
      );

      return;
    }

    const confirmed = confirm(
      `Are you sure you want to delete ${employee.fullName}?`
    );

    if (!confirmed) {
      return;
    }

    console.log(
      'Deleting employee:',
      employee.id
    );

    this.employeeService
      .deleteEmployee(employee.id)
      .subscribe({

        next: () => {

          console.log(
            'Employee deleted successfully'
          );

          this.employees =
            this.employees.filter(
              e => e.id !== employee.id
            );

          this.filterEmployees();

          this.cdr.detectChanges();
        },

        error: (error) => {

          console.error(
            'Failed to delete employee:',
            error
          );

          this.errorMessage =
            'Unable to delete employee.';

          this.cdr.detectChanges();
        }

      });
  }


  // =====================================================
  // GO TO DASHBOARD
  // =====================================================

  goToDashboard(): void {

    console.log('Navigating to Dashboard');

    this.router.navigate([
      '/ums/dashboard'
    ]);

  }

}