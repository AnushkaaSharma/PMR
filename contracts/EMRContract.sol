//SPDX-License-Identifier:MIT
pragma solidity >=0.5.16<0.8.0;
contract EMRContract {

  enum SexType { MALE, FEMALE }
  enum MaritalType { single, married, remarried, separated, divorced, widowed }

  struct Patient {
    address client;
    string fullname;
    string dob;
    SexType sex;
    MaritalType marital;
    string email;
    uint256[] medicalreport;
  }
mapping(address => Patient) public patients;


}