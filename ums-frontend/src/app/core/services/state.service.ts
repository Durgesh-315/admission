import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

import { State } from '../models/state.model';

@Injectable({
  providedIn: 'root'
})
export class StateService {

  private apiUrl = 'http://localhost:8080/api/states';

  constructor(private http: HttpClient) {}

  getAllStates(): Observable<State[]> {
    return this.http.get<State[]>(this.apiUrl);
  }
}