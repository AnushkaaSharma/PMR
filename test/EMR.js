var EMRContract = artifacts.require("./EMRContract.sol");

var Web3 = require('web3');
var web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:7545"));

contract('Initialize EMR Smart-Contract.', function (accounts) {

    it("Initialized the EMR project.", function () {
        return EMRContract.deployed().then(function (instance) {
            EMRInstance = instance;
            return EMRInstance.version();
        }).then((version) => {
            assert.equal(version, "0.0.1", 'Correct version.');
        })
    })
})