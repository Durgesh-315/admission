package com.example.employeecrud.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.employeecrud.entity.CandidateProfile;

public interface CandidateProfileRepository
        extends JpaRepository<CandidateProfile, Integer> {

    Optional<CandidateProfile> findByEmail(String email);

    boolean existsByEmail(String email);

    boolean existsByEmailAndIdNot(String email, Integer id);
}