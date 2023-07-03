pragma solidity ^0.8.6;

contract Bank {
    mapping(address => uint) balance;
    address owner;
    event balanceAdded(uint amount, address depositedTo);

    modifier onlyowner {
        require(owner == msg.sender, "you are not the owner");
        _;
    }
    

    constructor(){
        owner = msg.sender;
    }

    function addBalance(uint _toAdd) public returns(uint) {
        balance[msg.sender] += _toAdd;
        emit balanceAdded(_toAdd, msg.sender);
        return balance[msg.sender];

    }
    function getbalance()public view returns(uint) {
        return balance[msg.sender];
        
    }


    function transfer(address recipient, uint amount) public onlyowner {
        
        require(balance[msg.sender]>= amount, "You dont have enough balance to send.");
        require(msg.sender != recipient, "You are sender and receiver both so its not possible. ");

        uint previouSenderBalance = balance[msg.sender];

        balance[msg.sender] -= amount; 
        balance[recipient]  += amount;

        assert(balance[msg.sender] ==previouSenderBalance - amount);

    }
} 
