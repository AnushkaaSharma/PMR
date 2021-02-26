var EMRContract = artifacts.require("./EMRContract.sol");

module.exports = function(deployer) {
  deployer.deploy(EMRContract);
};
