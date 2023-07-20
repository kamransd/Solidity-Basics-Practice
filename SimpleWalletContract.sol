pragma solidity ^0.8.0;

contract SimpleWallet {
    address public owner;

    constructor() {
        owner=msg.sender;
    }
    function deposit() public payable {
    } 

    function withdraw(uint amount) public {
        require(msg.sender == owner, "Only the owner can withdraw");
        require(amount <= address(this).balance, "Insufficient balance");

        payable(owner).transfer(amount);
    } 
}
