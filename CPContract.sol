pragma solidity ^0.8.0;

contract crowfunding {
    address public creator;
    uint public goal;
    uint public totalFunds;

    mapping(address => uint) public contribution;

    constructor(uint _goal) {
        creator =msg.sender;
        goal=_goal;
        totalFunds=0;
    }

}
