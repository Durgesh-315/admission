package com.example.employeecrud.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.employeecrud.entity.CandidateProfile;
import com.example.employeecrud.service.CandidateProfileService;

@RestController
@RequestMapping("/api/candidates")
public class CandidateProfileController {

    private final CandidateProfileService candidateProfileService;

    public CandidateProfileController(
            CandidateProfileService candidateProfileService) {
        this.candidateProfileService = candidateProfileService;
    }

    // CREATE
    @PostMapping
    public ResponseEntity<CandidateProfile> createCandidate(
            @RequestBody CandidateProfile candidateProfile) {

        CandidateProfile createdCandidate =
                candidateProfileService.createCandidate(candidateProfile);

        return ResponseEntity
                .status(HttpStatus.CREATED)
                .body(createdCandidate);
    }

    // READ ALL
    @GetMapping
    public ResponseEntity<List<CandidateProfile>> getAllCandidates() {

        return ResponseEntity.ok(
                candidateProfileService.getAllCandidates());
    }

    // READ BY ID
    @GetMapping("/{id}")
    public ResponseEntity<CandidateProfile> getCandidateById(
            @PathVariable Integer id) {

        return ResponseEntity.ok(
                candidateProfileService.getCandidateById(id));
    }

    // UPDATE
    @PutMapping("/{id}")
    public ResponseEntity<CandidateProfile> updateCandidate(
            @PathVariable Integer id,
            @RequestBody CandidateProfile candidateProfile) {

        CandidateProfile updatedCandidate =
                candidateProfileService.updateCandidate(
                        id,
                        candidateProfile);

        return ResponseEntity.ok(updatedCandidate);
    }

    // DELETE
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCandidate(
            @PathVariable Integer id) {

        candidateProfileService.deleteCandidate(id);

        return ResponseEntity.noContent().build();
    }
}