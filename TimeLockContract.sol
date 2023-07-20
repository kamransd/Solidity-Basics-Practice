pragma solidity ^0.8.0;

contract TimeLock {
    address public beneficiary;
    uint public releaseTime;
    uint public amount;

    constructor(address _beneficiary, uint _releaseTime){
        beneficiary = _beneficiary;
        releaseTime = _releaseTime;
    }
    function deposit()public payable{
        require(msg.value > 0, "Amount must be greaterthan 0");
        amount +=msg.value;
    }
    function withdraw()public {
        require(msg.sender == beneficiary, "Only the beneficiary can withdraw");
        require(block.timestamp >= releaseTime, "The funds are still locked");

        payable(beneficiary).transfer(amount);
    }
}
