import { HttpInterceptorFn } from '@angular/common/http';
import { inject } from '@angular/core';

import { AuthService } from '../services/auth.service';

export const jwtInterceptor: HttpInterceptorFn = (req, next) => {

  const authService = inject(AuthService);

  const token = authService.getToken();

  console.log('========== JWT INTERCEPTOR ==========');
  console.log('URL:', req.url);
  console.log('Token exists:', !!token);
  console.log('Token:', token);

  if (!token) {
    console.log('No token found');
    return next(req);
  }

  if (req.url.includes('/api/auth/')) {
    console.log('Auth endpoint - JWT not added');
    return next(req);
  }

  const authRequest = req.clone({
    setHeaders: {
      Authorization: `Bearer ${token}`
    }
  });

  console.log('JWT added to request');

  return next(authRequest);
};