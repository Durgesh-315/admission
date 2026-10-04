import { Routes } from '@angular/router';

import { authGuard } from './core/guards/auth.guard';

export const routes: Routes = [

  {
    path: 'ums',

    children: [

      // ============================================
      // DEFAULT
      // ============================================

      {
        path: '',
        redirectTo: 'login',
        pathMatch: 'full'
      },


      // ============================================
      // LOGIN
      // ============================================

      {
        path: 'login',

        loadComponent: () =>
          import('./features/auth/login/login')
            .then(m => m.Login)
      },


      // ============================================
      // DASHBOARD
      // ============================================

      {
        path: 'dashboard',

        canActivate: [authGuard],

        loadComponent: () =>
          import('./features/dashboard/dashboard')
            .then(m => m.Dashboard)
      },


      // ============================================
      // EMPLOYEE LIST
      // ============================================

      {
        path: 'users',

        canActivate: [authGuard],

        loadComponent: () =>
          import('./features/users/user-list/user-list')
            .then(m => m.UserList)
      },


      // ============================================
      // ADD EMPLOYEE
      // ============================================

      {
        path: 'users/add',

        canActivate: [authGuard],

        loadComponent: () =>
          import('./features/users/user-form/user-form')
            .then(m => m.UserForm)
      },


      // ============================================
      // EDIT EMPLOYEE
      // ============================================

      {
        path: 'users/:id/edit',

        canActivate: [authGuard],

        loadComponent: () =>
          import('./features/users/user-form/user-form')
            .then(m => m.UserForm)
      },


      // ============================================
      // EMPLOYEE DETAILS
      // ============================================

      {
        path: 'users/:id',

        canActivate: [authGuard],

        loadComponent: () =>
          import('./features/users/user-details/user-details')
            .then(m => m.UserDetails)
      },


      // ============================================
      // CANDIDATE PROFILE LIST
      // ============================================

      {
        path: 'candidates',

        canActivate: [authGuard],

        loadComponent: () =>
          import('./features/candidates/candidate-list/candidate-list')
            .then(m => m.CandidateList)
      },


      // ============================================
      // ADD CANDIDATE PROFILE
      // ============================================

      {
        path: 'candidates/add',

        canActivate: [authGuard],

        loadComponent: () =>
          import('./features/candidates/candidate-form/candidate-form')
            .then(m => m.CandidateForm)
      },


      // ============================================
      // EDIT CANDIDATE PROFILE
      // ============================================

      {
        path: 'candidates/:id/edit',

        canActivate: [authGuard],

        loadComponent: () =>
          import('./features/candidates/candidate-form/candidate-form')
            .then(m => m.CandidateForm)
      },


      // ============================================
      // CANDIDATE PROFILE DETAILS
      // ============================================

      {
        path: 'candidates/:id',

        canActivate: [authGuard],

        loadComponent: () =>
          import('./features/candidates/candidate-details/candidate-details')
            .then(m => m.CandidateDetails)
      }

    ]
  },


  // ============================================
  // ROOT
  // ============================================

  {
    path: '',

    redirectTo: 'ums',

    pathMatch: 'full'
  },


  // ============================================
  // UNKNOWN ROUTES
  // ============================================

  {
    path: '**',

    redirectTo: 'ums'
  }

];