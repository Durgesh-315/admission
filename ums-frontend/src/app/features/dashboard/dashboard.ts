
import {
  Component,
  OnInit,
  ChangeDetectorRef
} from '@angular/core';

import { Router } from '@angular/router';

import { EmployeeService } from '../../core/services/employee.service';
import { AuthService } from '../../core/services/auth.service';
import { Employee } from '../../core/models/employee.model';

@Component({
  selector: 'app-dashboard',
  standalone: true,
  templateUrl: './dashboard.html',
  styleUrl: './dashboard.css'
})
export class Dashboard implements OnInit {

  employees: Employee[] = [];

  totalEmployees = 0;
  activeEmployees = 0;
  inactiveEmployees = 0;
  departments = 0;

  fullName = '';

  isLoading = true;
  errorMessage = '';

  constructor(
    private employeeService: EmployeeService,
    private authService: AuthService,
    private router: Router,
    private cdr: ChangeDetectorRef
  ) {}

  ngOnInit(): void {

    console.log('========== DASHBOARD INITIALIZED ==========');

    this.fullName =
      localStorage.getItem('fullName') || 'User';

    console.log('Logged-in user:', this.fullName);

    this.loadDashboardData();
  }

  loadDashboardData(): void {

    console.log('========== LOADING EMPLOYEES ==========');

    this.isLoading = true;

    this.employeeService.getAllEmployees().subscribe({

      next: (employees) => {

        console.log('========== EMPLOYEES RECEIVED ==========');
        console.log('Employees:', employees);
        console.log('Count:', employees.length);

        
      this.employees = [...employees].sort((a, b) => (b.id ?? 0) - (a.id ?? 0));

        this.totalEmployees = employees.length;

        this.activeEmployees =
          employees.filter(
            employee => employee.active === true
          ).length;

        this.inactiveEmployees =
          employees.filter(
            employee => employee.active === false
          ).length;

        const departmentSet = new Set(
          employees.map(
            employee => employee.department
          )
        );

        this.departments = departmentSet.size;

        this.isLoading = false;

        console.log('Dashboard loading finished');
        console.log('Total:', this.totalEmployees);
        console.log('Active:', this.activeEmployees);
        console.log('Inactive:', this.inactiveEmployees);
        console.log('Departments:', this.departments);
        console.log('isLoading:', this.isLoading);

        // Force Angular to update the view
        this.cdr.detectChanges();
      },

      error: (error) => {

        console.error('========== EMPLOYEE API ERROR ==========');
        console.error(error);

        this.isLoading = false;

        if (error.status === 401) {

          this.authService.logout();

          this.router.navigate(['/ums/login']);

        } else {

          this.errorMessage =
            'Unable to load dashboard data.';
        }

        this.cdr.detectChanges();
      }
    });
  }

  goToEmployees(): void {
    this.router.navigate(['/ums/users']);
  }

  logout(): void {

    this.authService.logout();

    this.router.navigate(['/ums/login']);
  }
  goToCandidates(): void {
  this.router.navigate(['/ums/candidates']);
}
}

