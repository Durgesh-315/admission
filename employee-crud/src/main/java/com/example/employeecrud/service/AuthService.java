package com.example.employeecrud.service;

import org.springframework.stereotype.Service;

import com.example.employeecrud.dto.LoginRequest;
import com.example.employeecrud.dto.LoginResponse;
import com.example.employeecrud.entity.Employee;
import com.example.employeecrud.repository.EmployeeRepository;

@Service
public class AuthService {


private final EmployeeRepository employeeRepository;

public AuthService(EmployeeRepository employeeRepository) {
    this.employeeRepository = employeeRepository;
}

public LoginResponse login(LoginRequest loginRequest) {

    Employee employee = employeeRepository
            .findByEmail(loginRequest.getUsername())
            .orElseThrow(() ->
                    new RuntimeException("Invalid username or password")
            );

    if (!employee.getPassword().equals(loginRequest.getPassword())) {
        throw new RuntimeException("Invalid username or password");
    }

    return new LoginResponse(
            "Login successful",
            employee.getId(),
            employee.getFullName(),
            employee.getEmail()
    );
}


}
