const IdentifierRegistry = artifacts.require("IdentifierRegistry");

module.exports = function (deployer) {
    deployer.deploy(IdentifierRegistry);
};
