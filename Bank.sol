pragma solidity ^0.8.6;

contract Bank {
    mapping(address => uint) balance;

    function addBalance(uint _toAdd) public returns(uint) {
        balance[msg.sender] += _toAdd;
        return balance[msg.sender];

    }

    function geBalance() public view returns(uint){
        return balance[msg.sender];
    }

    function transfer(address recipient, uint amount) public {
       // require() function used in this Bank contract
        require(balance[msg.sender]>= amount, "You dont have enough balance to send.");
        require(msg.sender != recipient, "You are sender and receiver both so its not possible. ");
        balance[msg.sender] -= amount; 
        balance[recipient]  += amount;
    }
}
