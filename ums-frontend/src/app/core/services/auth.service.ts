
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, tap } from 'rxjs';

export interface LoginRequest {
  username: string;
  password: string;
}

export interface LoginResponse {
  message: string;
  userId: number;
  fullName: string;
  username: string;
  email: string;
  token: string;
}

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  private apiUrl = 'http://localhost:8080/api/auth';

  constructor(private http: HttpClient) {}

  login(request: LoginRequest): Observable<LoginResponse> {

    return this.http
      .post<LoginResponse>(`${this.apiUrl}/login`, request)
      .pipe(
        tap(response => {
          localStorage.setItem('token', response.token);
          localStorage.setItem('userId', response.userId.toString());
          localStorage.setItem('username', response.username);
          localStorage.setItem('fullName', response.fullName);
          localStorage.setItem('email', response.email);
        })
      );
  }

  logout(): void {
    localStorage.removeItem('token');
    localStorage.removeItem('userId');
    localStorage.removeItem('username');
    localStorage.removeItem('fullName');
    localStorage.removeItem('email');
  }

  getToken(): string | null {
    return localStorage.getItem('token');
  }

  isLoggedIn(): boolean {
    return !!this.getToken();
  }
}
