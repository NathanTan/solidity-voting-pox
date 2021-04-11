// 'artifacts' are truffle specific
var Election = artifacts.require("./Election.sol")

module.exports = function(deployer) {
    deployer.deploy(Election)
}