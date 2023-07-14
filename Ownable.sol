pragma solidity ^0.8.6;
contract Ownable {

    address internal owner;
// Admin Only run
    modifier onlyowner {
        require(owner == msg.sender, "you are not the owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }
}
