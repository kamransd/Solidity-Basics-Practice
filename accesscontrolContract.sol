pragma solidity ^0.8.0;

contract AccessControl {
    mapping(address => bool) public owners;

    modifier onlyOwner(){
        require(owners[msg.sender], "only the owner can call this function");
        _;
    }
    constructor(){
        owners[msg.sender] = true;
    }
    function addOwner(address newOwner) public onlyOwner {
       owners[newOwner] = true;
    }
}
