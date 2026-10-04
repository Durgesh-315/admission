package com.example.employeecrud.entity;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "candidate_profile")
public class CandidateProfile {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "title", length = 6)
    private String title;

    @Column(name = "fullName", length = 100)
    private String fullName;

    @Column(name = "email", length = 80, unique = true)
    private String email;

    @Column(name = "mobileNo", length = 20)
    private String mobileNo;

    @Column(name = "fatherHusbandName", length = 45)
    private String fatherHusbandName;

    @Column(name = "motherName", length = 100)
    private String motherName;

    @Column(name = "fatherMobile", length = 15)
    private String fatherMobile;

    @Column(name = "motherMobile", length = 15)
    private String motherMobile;

    @Column(name = "fatherOccupation", length = 100)
    private String fatherOccupation;

    @Column(name = "motherOccupation", length = 100)
    private String motherOccupation;

    @Column(name = "siblings")
    private Integer siblings;

    @Column(name = "annualIncome", length = 45)
    private String annualIncome;

    @Column(name = "orgName", length = 120)
    private String orgName;

    @Column(name = "designation", length = 45)
    private String designation;

    @Column(name = "city", length = 45)
    private String city;

    @Column(name = "distt", length = 45)
    private String distt;

    @Column(name = "state", length = 45)
    private String state;

    @Column(name = "orgPhone", length = 20)
    private String orgPhone;

    @Column(name = "orgEmail", length = 80)
    private String orgEmail;

    @Column(name = "orgWebsite", length = 100)
    private String orgWebsite;

    @Column(name = "physicallyChallenged", length = 10)
    private String physicallyChallenged;

    @Column(name = "aadhaarNo", length = 20)
    private String aadhaarNo;

    @Column(name = "apaarId", length = 20)
    private String apaarId;

    @Column(name = "panNo", length = 10)
    private String panNo;

    @Column(name = "voterId", length = 20)
    private String voterId;

    @Column(name = "passportNo", length = 20)
    private String passportNo;

    @Column(name = "drivingLicenseNo", length = 20)
    private String drivingLicenseNo;

    @Column(name = "gender", length = 10)
    private String gender;

    @Column(name = "bloodGroup", length = 5)
    private String bloodGroup;

    @Column(name = "category", length = 30)
    private String category;

    @Column(name = "localAddress", length = 300)
    private String localAddress;

    @Column(name = "permanentAddress", length = 300)
    private String permanentAddress;

    @Column(name = "dob")
    private LocalDate dob;

    @Column(name = "maritalStatus", length = 10)
    private String maritalStatus;

    @Column(name = "remark", length = 200)
    private String remark;

    @Column(name = "updateBy", length = 100)
    private String updateBy;

    @Column(name = "updateDt")
    private LocalDate updateDt;

    @Column(name = "updateTime", length = 45)
    private String updateTime;

    @Column(name = "alternativeEmail", length = 80)
    private String alternativeEmail;

    @Column(name = "nationality", length = 45)
    private String nationality;

    @Column(name = "religion", length = 50)
    private String religion;

    @Column(name = "f1", length = 45)
    private String f1;

    @Column(name = "f2", length = 45)
    private String f2;

    @Column(name = "f3", length = 45)
    private String f3;

    @Column(name = "f4", length = 45)
    private String f4;

    @Column(name = "f5", length = 45)
    private String f5;

    @Column(name = "vStatus", length = 255)
    private String vStatus;

    @Column(name = "vBy", length = 255)
    private String vBy;

    @Column(name = "vStamp", length = 255)
    private String vStamp;

    @Column(name = "pStatus", length = 255)
    private String pStatus;

    @Column(name = "pBy", length = 255)
    private String pBy;

    @Column(name = "pStamp", length = 255)
    private String pStamp;

    public CandidateProfile() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    public String getFatherHusbandName() {
        return fatherHusbandName;
    }

    public void setFatherHusbandName(String fatherHusbandName) {
        this.fatherHusbandName = fatherHusbandName;
    }

    public String getMotherName() {
        return motherName;
    }

    public void setMotherName(String motherName) {
        this.motherName = motherName;
    }

    public String getFatherMobile() {
        return fatherMobile;
    }

    public void setFatherMobile(String fatherMobile) {
        this.fatherMobile = fatherMobile;
    }

    public String getMotherMobile() {
        return motherMobile;
    }

    public void setMotherMobile(String motherMobile) {
        this.motherMobile = motherMobile;
    }

    public String getFatherOccupation() {
        return fatherOccupation;
    }

    public void setFatherOccupation(String fatherOccupation) {
        this.fatherOccupation = fatherOccupation;
    }

    public String getMotherOccupation() {
        return motherOccupation;
    }

    public void setMotherOccupation(String motherOccupation) {
        this.motherOccupation = motherOccupation;
    }

    public Integer getSiblings() {
        return siblings;
    }

    public void setSiblings(Integer siblings) {
        this.siblings = siblings;
    }

    public String getAnnualIncome() {
        return annualIncome;
    }

    public void setAnnualIncome(String annualIncome) {
        this.annualIncome = annualIncome;
    }

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistt() {
        return distt;
    }

    public void setDistt(String distt) {
        this.distt = distt;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getOrgPhone() {
        return orgPhone;
    }

    public void setOrgPhone(String orgPhone) {
        this.orgPhone = orgPhone;
    }

    public String getOrgEmail() {
        return orgEmail;
    }

    public void setOrgEmail(String orgEmail) {
        this.orgEmail = orgEmail;
    }

    public String getOrgWebsite() {
        return orgWebsite;
    }

    public void setOrgWebsite(String orgWebsite) {
        this.orgWebsite = orgWebsite;
    }

    public String getPhysicallyChallenged() {
        return physicallyChallenged;
    }

    public void setPhysicallyChallenged(String physicallyChallenged) {
        this.physicallyChallenged = physicallyChallenged;
    }

    public String getAadhaarNo() {
        return aadhaarNo;
    }

    public void setAadhaarNo(String aadhaarNo) {
        this.aadhaarNo = aadhaarNo;
    }

    public String getApaarId() {
        return apaarId;
    }

    public void setApaarId(String apaarId) {
        this.apaarId = apaarId;
    }

    public String getPanNo() {
        return panNo;
    }

    public void setPanNo(String panNo) {
        this.panNo = panNo;
    }

    public String getVoterId() {
        return voterId;
    }

    public void setVoterId(String voterId) {
        this.voterId = voterId;
    }

    public String getPassportNo() {
        return passportNo;
    }

    public void setPassportNo(String passportNo) {
        this.passportNo = passportNo;
    }

    public String getDrivingLicenseNo() {
        return drivingLicenseNo;
    }

    public void setDrivingLicenseNo(String drivingLicenseNo) {
        this.drivingLicenseNo = drivingLicenseNo;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBloodGroup() {
        return bloodGroup;
    }

    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getLocalAddress() {
        return localAddress;
    }

    public void setLocalAddress(String localAddress) {
        this.localAddress = localAddress;
    }

    public String getPermanentAddress() {
        return permanentAddress;
    }

    public void setPermanentAddress(String permanentAddress) {
        this.permanentAddress = permanentAddress;
    }

    public LocalDate getDob() {
        return dob;
    }

    public void setDob(LocalDate dob) {
        this.dob = dob;
    }

    public String getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public LocalDate getUpdateDt() {
        return updateDt;
    }

    public void setUpdateDt(LocalDate updateDt) {
        this.updateDt = updateDt;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    public String getAlternativeEmail() {
        return alternativeEmail;
    }

    public void setAlternativeEmail(String alternativeEmail) {
        this.alternativeEmail = alternativeEmail;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public String getF1() {
        return f1;
    }

    public void setF1(String f1) {
        this.f1 = f1;
    }

    public String getF2() {
        return f2;
    }

    public void setF2(String f2) {
        this.f2 = f2;
    }

    public String getF3() {
        return f3;
    }

    public void setF3(String f3) {
        this.f3 = f3;
    }

    public String getF4() {
        return f4;
    }

    public void setF4(String f4) {
        this.f4 = f4;
    }

    public String getF5() {
        return f5;
    }

    public void setF5(String f5) {
        this.f5 = f5;
    }

    public String getVStatus() {
        return vStatus;
    }

    public void setVStatus(String vStatus) {
        this.vStatus = vStatus;
    }

    public String getVBy() {
        return vBy;
    }

    public void setVBy(String vBy) {
        this.vBy = vBy;
    }

    public String getVStamp() {
        return vStamp;
    }

    public void setVStamp(String vStamp) {
        this.vStamp = vStamp;
    }

    public String getPStatus() {
        return pStatus;
    }

    public void setPStatus(String pStatus) {
        this.pStatus = pStatus;
    }

    public String getPBy() {
        return pBy;
    }

    public void setPBy(String pBy) {
        this.pBy = pBy;
    }

    public String getPStamp() {
        return pStamp;
    }

    public void setPStamp(String pStamp) {
        this.pStamp = pStamp;
    }
}