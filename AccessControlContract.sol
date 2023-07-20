pragma solidity ^0.8.0;

contract AccessControl {
    address public owner;

    modifier onlyOwner(){
        require(msg.sender == owner, "only the owner can call this function");
        _;
    }
    constructor(){
        owner = msg.sender;
    }
    function changeOwner(address newOwner) public onlyOwner {
        owner = newOwner;
    }
}
