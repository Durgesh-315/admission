
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';

import {
  AuthService,
  LoginRequest
} from '../../../core/services/auth.service';

@Component({
  selector: 'app-login',
  imports: [FormsModule],
  templateUrl: './login.html',
  styleUrl: './login.css'
})
export class Login {

  email = '';
  password = '';
  rememberMe = false;
  showPassword = false;
  isLoading = false;
  errorMessage = '';

  constructor(
    private authService: AuthService,
    private router: Router
  ) {}

  togglePassword(): void {
    this.showPassword = !this.showPassword;
  }

onLogin(): void {

  console.log('========== LOGIN CLICKED ==========');
  console.log('Username:', this.email);
  console.log('Password:', this.password);

  this.errorMessage = '';

  if (!this.email || !this.password) {
    this.errorMessage = 'Please enter your username and password.';
    return;
  }

  this.isLoading = true;

  const loginRequest: LoginRequest = {
    username: this.email,
    password: this.password
  };

  console.log('Sending request:', loginRequest);
  console.log('API URL:', 'http://localhost:8080/api/auth/login');

  this.authService.login(loginRequest).subscribe({

    next: (response) => {

      console.log('========== LOGIN SUCCESS ==========');
      console.log(response);

      this.isLoading = false;

      this.router.navigate(['/ums/dashboard']);
    },

    error: (error) => {

      console.error('========== LOGIN ERROR ==========');
      console.error('Error:', error);
      console.error('Status:', error.status);
      console.error('URL:', error.url);

      this.isLoading = false;

      if (error.status === 401) {
        this.errorMessage = 'Invalid username or password.';
      } else if (error.status === 403) {
        this.errorMessage = 'Access denied.';
      } else if (error.status === 0) {
        this.errorMessage =
          'Unable to connect to the server. Please make sure Spring Boot is running.';
      } else {
        this.errorMessage =
          'Login failed. Please try again.';
      }
    }
  });
}
}

