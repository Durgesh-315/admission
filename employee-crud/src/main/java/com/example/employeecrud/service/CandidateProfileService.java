package com.example.employeecrud.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.employeecrud.entity.CandidateProfile;
import com.example.employeecrud.repository.CandidateProfileRepository;

@Service
public class CandidateProfileService {

    private final CandidateProfileRepository candidateProfileRepository;

    public CandidateProfileService(
            CandidateProfileRepository candidateProfileRepository) {
        this.candidateProfileRepository = candidateProfileRepository;
    }

    // CREATE
    public CandidateProfile createCandidate(
            CandidateProfile candidateProfile) {

        if (candidateProfile.getEmail() != null
                && candidateProfileRepository
                        .existsByEmail(candidateProfile.getEmail())) {

            throw new RuntimeException("Email already exists");
        }

        return candidateProfileRepository.save(candidateProfile);
    }

    // READ ALL
    public List<CandidateProfile> getAllCandidates() {
        return candidateProfileRepository.findAll();
    }

    // READ BY ID
    public CandidateProfile getCandidateById(Integer id) {

        return candidateProfileRepository.findById(id)
                .orElseThrow(() ->
                        new RuntimeException(
                                "Candidate not found with id: " + id));
    }

    // UPDATE
    public CandidateProfile updateCandidate(
            Integer id,
            CandidateProfile updatedCandidate) {

        CandidateProfile existingCandidate =
                candidateProfileRepository.findById(id)
                        .orElseThrow(() ->
                                new RuntimeException(
                                        "Candidate not found with id: " + id));

        if (updatedCandidate.getEmail() != null
                && candidateProfileRepository
                        .existsByEmailAndIdNot(
                                updatedCandidate.getEmail(), id)) {

            throw new RuntimeException("Email already exists");
        }

        existingCandidate.setTitle(updatedCandidate.getTitle());
        existingCandidate.setFullName(updatedCandidate.getFullName());
        existingCandidate.setEmail(updatedCandidate.getEmail());
        existingCandidate.setMobileNo(updatedCandidate.getMobileNo());
        existingCandidate.setFatherHusbandName(
                updatedCandidate.getFatherHusbandName());
        existingCandidate.setMotherName(updatedCandidate.getMotherName());
        existingCandidate.setFatherMobile(
                updatedCandidate.getFatherMobile());
        existingCandidate.setMotherMobile(
                updatedCandidate.getMotherMobile());
        existingCandidate.setFatherOccupation(
                updatedCandidate.getFatherOccupation());
        existingCandidate.setMotherOccupation(
                updatedCandidate.getMotherOccupation());
        existingCandidate.setSiblings(updatedCandidate.getSiblings());
        existingCandidate.setAnnualIncome(
                updatedCandidate.getAnnualIncome());
        existingCandidate.setOrgName(updatedCandidate.getOrgName());
        existingCandidate.setDesignation(
                updatedCandidate.getDesignation());
        existingCandidate.setCity(updatedCandidate.getCity());
        existingCandidate.setDistt(updatedCandidate.getDistt());
        existingCandidate.setState(updatedCandidate.getState());
        existingCandidate.setOrgPhone(updatedCandidate.getOrgPhone());
        existingCandidate.setOrgEmail(updatedCandidate.getOrgEmail());
        existingCandidate.setOrgWebsite(updatedCandidate.getOrgWebsite());
        existingCandidate.setPhysicallyChallenged(
                updatedCandidate.getPhysicallyChallenged());
        existingCandidate.setAadhaarNo(updatedCandidate.getAadhaarNo());
        existingCandidate.setApaarId(updatedCandidate.getApaarId());
        existingCandidate.setPanNo(updatedCandidate.getPanNo());
        existingCandidate.setVoterId(updatedCandidate.getVoterId());
        existingCandidate.setPassportNo(updatedCandidate.getPassportNo());
        existingCandidate.setDrivingLicenseNo(
                updatedCandidate.getDrivingLicenseNo());
        existingCandidate.setGender(updatedCandidate.getGender());
        existingCandidate.setBloodGroup(updatedCandidate.getBloodGroup());
        existingCandidate.setCategory(updatedCandidate.getCategory());
        existingCandidate.setLocalAddress(
                updatedCandidate.getLocalAddress());
        existingCandidate.setPermanentAddress(
                updatedCandidate.getPermanentAddress());
        existingCandidate.setDob(updatedCandidate.getDob());
        existingCandidate.setMaritalStatus(
                updatedCandidate.getMaritalStatus());
        existingCandidate.setRemark(updatedCandidate.getRemark());
        existingCandidate.setUpdateBy(updatedCandidate.getUpdateBy());
        existingCandidate.setUpdateDt(updatedCandidate.getUpdateDt());
        existingCandidate.setUpdateTime(updatedCandidate.getUpdateTime());
        existingCandidate.setAlternativeEmail(
                updatedCandidate.getAlternativeEmail());
        existingCandidate.setNationality(
                updatedCandidate.getNationality());
        existingCandidate.setReligion(updatedCandidate.getReligion());
        existingCandidate.setF1(updatedCandidate.getF1());
        existingCandidate.setF2(updatedCandidate.getF2());
        existingCandidate.setF3(updatedCandidate.getF3());
        existingCandidate.setF4(updatedCandidate.getF4());
        existingCandidate.setF5(updatedCandidate.getF5());
        existingCandidate.setVStatus(updatedCandidate.getVStatus());
        existingCandidate.setVBy(updatedCandidate.getVBy());
        existingCandidate.setVStamp(updatedCandidate.getVStamp());
        existingCandidate.setPStatus(updatedCandidate.getPStatus());
        existingCandidate.setPBy(updatedCandidate.getPBy());
        existingCandidate.setPStamp(updatedCandidate.getPStamp());

        return candidateProfileRepository.save(existingCandidate);
    }

    // DELETE
    public void deleteCandidate(Integer id) {

        if (!candidateProfileRepository.existsById(id)) {
            throw new RuntimeException(
                    "Candidate not found with id: " + id);
        }

        candidateProfileRepository.deleteById(id);
    }
}