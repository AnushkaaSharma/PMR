//SPDX-License-Identifier:MIT
pragma solidity >=0.5.16<0.8.0;
contract EMRContract {

  enum SexType { MALE, FEMALE }
  enum MaritalType { single, married, remarried, separated, divorced, widowed }
  enum AppointmentStat { CREATED, APPROVED, REJECTED, BILLING, CLOSE }

  struct Patient {
    address client;
    string fullname;
    string dob;
    SexType sex;
    MaritalType marital;
    string email;
    uint256[] medicalreport;
  }

  struct Appointment{
    uint256 index;
    address patient;
    uint256 datetime;
    AppointmentStat stat;
    string remark;
  }

mapping(address => Patient) public patients;
mapping(uint256 => Appointment) public appointments;


}