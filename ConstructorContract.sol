pragma solidity ^0.8.0;

contract MultiSigWallet {
    address[] public owners;
    uint public requiredSignatures;

    constructor(address[] memory _owners, uint _requiredSignatures) {
        owners = _owners;
        requiredSignatures = _requiredSignatures;
    }
}
