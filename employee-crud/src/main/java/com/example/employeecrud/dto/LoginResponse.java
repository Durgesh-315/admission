package com.example.employeecrud.dto;

public class LoginResponse {


private String message;
private Long employeeId;
private String fullName;
private String email;

public LoginResponse() {
}

public LoginResponse(String message, Long employeeId, String fullName, String email) {
    this.message = message;
    this.employeeId = employeeId;
    this.fullName = fullName;
    this.email = email;
}

public String getMessage() {
    return message;
}

public void setMessage(String message) {
    this.message = message;
}

public Long getEmployeeId() {
    return employeeId;
}

public void setEmployeeId(Long employeeId) {
    this.employeeId = employeeId;
}

public String getFullName() {
    return fullName;
}

public void setFullName(String fullName) {
    this.fullName = fullName;
}

public String getEmail() {
    return email;
}

public void setEmail(String email) {
    this.email = email;
}

}
