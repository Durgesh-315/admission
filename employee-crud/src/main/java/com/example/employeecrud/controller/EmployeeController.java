//package com.example.employeecrud.controller;
//
//import java.util.List;
//import java.time.LocalDate;
//import java.io.IOException;
//
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.multipart.MultipartFile;
//
//import com.example.employeecrud.service.FileStorageService;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.DeleteMapping;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.PutMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import com.example.employeecrud.entity.Employee;
//import com.example.employeecrud.service.EmployeeService;
//import java.nio.file.Files;
//import java.nio.file.Path;
//import java.nio.file.Paths;
//
//import org.springframework.core.io.Resource;
//import org.springframework.core.io.UrlResource;
//import org.springframework.http.HttpHeaders;
//@RestController
//@RequestMapping("/api/employees")
//public class EmployeeController {
//
//	private final EmployeeService employeeService;
//	private final FileStorageService fileStorageService;
//
//	public EmployeeController(
//	        EmployeeService employeeService,
//	        FileStorageService fileStorageService) {
//
//	    this.employeeService = employeeService;
//	    this.fileStorageService = fileStorageService;
//	}
//    // CREATE
//    @PostMapping
//    public ResponseEntity<Employee> createEmployee(
//            @RequestBody Employee employee) {
//
//        Employee savedEmployee = employeeService.createEmployee(employee);
//
//        return new ResponseEntity<>(savedEmployee, HttpStatus.CREATED);
//    }
//
//    // GET ALL
//    @GetMapping
//    public ResponseEntity<List<Employee>> getAllEmployees() {
//
//        return ResponseEntity.ok(employeeService.getAllEmployees());
//    }
//
//    // GET BY ID
//    @GetMapping("/{id}")
//    public ResponseEntity<Employee> getEmployeeById(
//            @PathVariable Long id) {
//
//        return ResponseEntity.ok(
//                employeeService.getEmployeeById(id)
//        );
//    }
//
//    // UPDATE
//    @PutMapping("/{id}")
//    public ResponseEntity<Employee> updateEmployee(
//            @PathVariable Long id,
//            @RequestBody Employee employee) {
//
//        return ResponseEntity.ok(
//                employeeService.updateEmployee(id, employee)
//        );
//    }
//
//    // DELETE
//    @DeleteMapping("/{id}")
//    public ResponseEntity<Void> deleteEmployee(
//            @PathVariable Long id) {
//
//        employeeService.deleteEmployee(id);
//
//        return ResponseEntity.noContent().build();
//    }
//    @PostMapping("/{id}/files")
//    public ResponseEntity<Employee> uploadFiles(
//            @PathVariable Long id,
//            @RequestParam("profileImage") MultipartFile profileImage,
//            @RequestParam("resume") MultipartFile resume) throws IOException {
//
//        Employee employee = employeeService.getEmployeeById(id);
//
//        String profileImageName = fileStorageService.saveFile(profileImage);
//        String resumeName = fileStorageService.saveFile(resume);
//
//        employee.setProfileImage(profileImageName);
//        employee.setResume(resumeName);
//
//        Employee updatedEmployee = employeeService.createEmployee(employee);
//
//        return ResponseEntity.ok(updatedEmployee);
//    }
//    @PostMapping("/with-files")
//    public ResponseEntity<Employee> createEmployeeWithFiles(
//
//            @RequestParam("fullName") String fullName,
//            @RequestParam("email") String email,
//            @RequestParam("age") Integer age,
//            @RequestParam("department") String department,
//            @RequestParam("gender") String gender,
//            @RequestParam("skills") List<String> skills,
//            @RequestParam("employmentType") String employmentType,
//            @RequestParam("joiningDate") String joiningDate,
//            @RequestParam("address") String address,
//            @RequestParam("password") String password,
//            @RequestParam("active") Boolean active,
//
//            @RequestParam("profileImage") MultipartFile profileImage,
//            @RequestParam("resume") MultipartFile resume
//
//    ) throws IOException {
//
//        String profileImageName = fileStorageService.saveFile(profileImage);
//        String resumeName = fileStorageService.saveFile(resume);
//
//        Employee employee = new Employee();
//
//        employee.setFullName(fullName);
//        employee.setEmail(email);
//        employee.setAge(age);
//        employee.setDepartment(department);
//        employee.setGender(gender);
//        employee.setSkills(skills);
//        employee.setEmploymentType(employmentType);
//        employee.setAddress(address);
//        employee.setPassword(password);
//        employee.setActive(active);
//        employee.setJoiningDate(LocalDate.parse(joiningDate));
//        employee.setProfileImage(profileImageName);
//        employee.setResume(resumeName);
//
//        // We will handle the date in the next small step
//        // employee.setJoiningDate(...);
//
//        Employee savedEmployee = employeeService.createEmployee(employee);
//
//        return ResponseEntity.ok(savedEmployee);
//    }
//    @GetMapping("/files/{filename:.+}")
//    public ResponseEntity<Resource> getFile(
//            @PathVariable String filename) throws IOException {
//
//        Path filePath = Paths.get("uploads")
//                .resolve(filename)
//                .normalize();
//
//        Resource resource = new UrlResource(filePath.toUri());
//
//        if (!resource.exists()) {
//            return ResponseEntity.notFound().build();
//        }
//
//        String contentType = Files.probeContentType(filePath);
//
//        if (contentType == null) {
//
//            if (filename.toLowerCase().endsWith(".pdf")) {
//                contentType = "application/pdf";
//            } 
//            else if (filename.toLowerCase().endsWith(".jpg")
//                    || filename.toLowerCase().endsWith(".jpeg")) {
//                contentType = "image/jpeg";
//            } 
//            else if (filename.toLowerCase().endsWith(".png")) {
//                contentType = "image/png";
//            } 
//            else {
//                contentType = "application/octet-stream";
//            }
//        }
//
//        return ResponseEntity.ok()
//                .header(
//                        HttpHeaders.CONTENT_DISPOSITION,
//                        "inline; filename=\"" + resource.getFilename() + "\""
//                )
//                .header(
//                        HttpHeaders.CONTENT_TYPE,
//                        contentType
//                )
//                .body(resource);
//    }
//}
package com.example.employeecrud.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.util.List;

import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.example.employeecrud.entity.Employee;
import com.example.employeecrud.service.EmployeeService;
import com.example.employeecrud.service.FileStorageService;

@RestController
@RequestMapping("/api/employees")
public class EmployeeController {

    private final EmployeeService employeeService;
    private final FileStorageService fileStorageService;

    public EmployeeController(
            EmployeeService employeeService,
            FileStorageService fileStorageService) {

        this.employeeService = employeeService;
        this.fileStorageService = fileStorageService;
    }

    // =====================================================
    // CREATE EMPLOYEE - JSON
    // =====================================================

    @PostMapping
    public ResponseEntity<Employee> createEmployee(
            @RequestBody Employee employee) {

        Employee savedEmployee =
                employeeService.createEmployee(employee);

        return new ResponseEntity<>(
                savedEmployee,
                HttpStatus.CREATED
        );
    }

    // =====================================================
    // GET ALL EMPLOYEES
    // =====================================================

    @GetMapping
    public ResponseEntity<List<Employee>> getAllEmployees() {

        return ResponseEntity.ok(
                employeeService.getAllEmployees()
        );
    }

    // =====================================================
    // GET EMPLOYEE BY ID
    // =====================================================

    @GetMapping("/{id}")
    public ResponseEntity<Employee> getEmployeeById(
            @PathVariable Long id) {

        return ResponseEntity.ok(
                employeeService.getEmployeeById(id)
        );
    }

    // =====================================================
    // UPDATE EMPLOYEE - JSON
    // =====================================================

    @PutMapping("/{id}")
    public ResponseEntity<Employee> updateEmployee(
            @PathVariable Long id,
            @RequestBody Employee employee) {

        return ResponseEntity.ok(
                employeeService.updateEmployee(id, employee)
        );
    }

    // =====================================================
    // DELETE EMPLOYEE
    // =====================================================

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteEmployee(
            @PathVariable Long id) {

        employeeService.deleteEmployee(id);

        return ResponseEntity.noContent().build();
    }

    // =====================================================
    // CREATE EMPLOYEE WITH FILES
    // =====================================================

    @PostMapping("/with-files")
    public ResponseEntity<Employee> createEmployeeWithFiles(

            @RequestParam("fullName")
            String fullName,

            @RequestParam("email")
            String email,

            @RequestParam("age")
            Integer age,

            @RequestParam("department")
            String department,

            @RequestParam("gender")
            String gender,

            @RequestParam(value = "skills", required = false)
            List<String> skills,

            @RequestParam("employmentType")
            String employmentType,

            @RequestParam("joiningDate")
            String joiningDate,

            @RequestParam("address")
            String address,

            @RequestParam("password")
            String password,

            @RequestParam("active")
            Boolean active,

            @RequestParam("profileImage")
            MultipartFile profileImage,

            @RequestParam("resume")
            MultipartFile resume

    ) throws IOException {

        // -------------------------------------------------
        // SAVE FILES
        // -------------------------------------------------

        String profileImageName =
                fileStorageService.saveFile(profileImage);

        String resumeName =
                fileStorageService.saveFile(resume);

        // -------------------------------------------------
        // CREATE EMPLOYEE
        // -------------------------------------------------

        Employee employee = new Employee();

        employee.setFullName(fullName);
        employee.setEmail(email);
        employee.setAge(age);
        employee.setDepartment(department);
        employee.setGender(gender);

        if (skills != null) {
            employee.setSkills(new java.util.ArrayList<>(skills));
        }

        employee.setEmploymentType(employmentType);
        employee.setAddress(address);
        employee.setPassword(password);
        employee.setActive(active);

        employee.setJoiningDate(
                LocalDate.parse(joiningDate)
        );

        employee.setProfileImage(profileImageName);
        employee.setResume(resumeName);

        Employee savedEmployee =
                employeeService.createEmployee(employee);

        return ResponseEntity.ok(savedEmployee);
    }

    // =====================================================
    // UPDATE EMPLOYEE WITH FILES
    // =====================================================

    @PutMapping("/{id}/with-files")
    public ResponseEntity<Employee> updateEmployeeWithFiles(

            @PathVariable Long id,

            @RequestParam("fullName")
            String fullName,

            @RequestParam("email")
            String email,

            @RequestParam("age")
            Integer age,

            @RequestParam("department")
            String department,

            @RequestParam("gender")
            String gender,

            @RequestParam(value = "skills", required = false)
            List<String> skills,

            @RequestParam("employmentType")
            String employmentType,

            @RequestParam("joiningDate")
            String joiningDate,

            @RequestParam("address")
            String address,

            @RequestParam("password")
            String password,

            @RequestParam("active")
            Boolean active,

            @RequestParam(value = "profileImage", required = false)
            MultipartFile profileImage,

            @RequestParam(value = "resume", required = false)
            MultipartFile resume

    ) throws IOException {

        System.out.println(
                "========== UPDATE EMPLOYEE WITH FILES =========="
        );

        System.out.println("Employee ID: " + id);

        // -------------------------------------------------
        // GET EXISTING EMPLOYEE
        // -------------------------------------------------

        Employee employee =
                employeeService.getEmployeeById(id);

        // -------------------------------------------------
        // UPDATE NORMAL FIELDS
        // -------------------------------------------------

        employee.setFullName(fullName);
        employee.setEmail(email);
        employee.setAge(age);
        employee.setDepartment(department);
        employee.setGender(gender);

        if (skills != null) {
            employee.setSkills(new java.util.ArrayList<>(skills));
        } else {
            employee.setSkills(new java.util.ArrayList<>());
        }
        employee.setEmploymentType(employmentType);
        employee.setAddress(address);
        employee.setPassword(password);
        employee.setActive(active);

        employee.setJoiningDate(
                LocalDate.parse(joiningDate)
        );

        // -------------------------------------------------
        // UPDATE PROFILE IMAGE ONLY IF NEW IMAGE PROVIDED
        // -------------------------------------------------

        if (profileImage != null &&
                !profileImage.isEmpty()) {

            System.out.println(
                    "New profile image received: "
                    + profileImage.getOriginalFilename()
            );

            String profileImageName =
                    fileStorageService.saveFile(profileImage);

            employee.setProfileImage(
                    profileImageName
            );
        } else {

            System.out.println(
                    "No new profile image. Keeping existing image."
            );
        }

        // -------------------------------------------------
        // UPDATE RESUME ONLY IF NEW RESUME PROVIDED
        // -------------------------------------------------

        if (resume != null &&
                !resume.isEmpty()) {

            System.out.println(
                    "New resume received: "
                    + resume.getOriginalFilename()
            );

            String resumeName =
                    fileStorageService.saveFile(resume);

            employee.setResume(
                    resumeName
            );
        } else {

            System.out.println(
                    "No new resume. Keeping existing resume."
            );
        }

        // -------------------------------------------------
        // SAVE EXISTING EMPLOYEE
        // -------------------------------------------------

        Employee updatedEmployee =
                employeeService.updateEmployee(
                        id,
                        employee
                );

        System.out.println(
                "Employee updated successfully."
        );

        return ResponseEntity.ok(
                updatedEmployee
        );
    }

    // =====================================================
    // GET FILE
    // =====================================================

    @GetMapping("/files/{filename:.+}")
    public ResponseEntity<Resource> getFile(
            @PathVariable String filename)
            throws IOException {

        Path filePath = Paths
                .get("uploads")
                .resolve(filename)
                .normalize();

        Resource resource =
                new UrlResource(
                        filePath.toUri()
                );

        if (!resource.exists()) {
            return ResponseEntity.notFound().build();
        }

        String contentType =
                Files.probeContentType(filePath);

        if (contentType == null) {

            if (filename.toLowerCase().endsWith(".pdf")) {

                contentType =
                        "application/pdf";

            } else if (
                    filename.toLowerCase().endsWith(".jpg")
                    || filename.toLowerCase().endsWith(".jpeg")) {

                contentType =
                        "image/jpeg";

            } else if (
                    filename.toLowerCase().endsWith(".png")) {

                contentType =
                        "image/png";

            } else {

                contentType =
                        "application/octet-stream";
            }
        }

        return ResponseEntity.ok()
                .header(
                        HttpHeaders.CONTENT_DISPOSITION,
                        "inline; filename=\""
                                + resource.getFilename()
                                + "\""
                )
                .header(
                        HttpHeaders.CONTENT_TYPE,
                        contentType
                )
                .body(resource);
    }
}