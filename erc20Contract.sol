pragma solidity ^0.8.9;

contract ERC20Token {
    string public name;
    string public symbol;
    uint public totalSupply;
    mapping(address => uint) public balanceof;
    
    constructor(string memory _name, string memory _symbol, uint _totalSupply){
        name = _name;
        symbol = _symbol;
        totalSupply = _totalSupply;
        balanceof[msg.sender] = _totalSupply;
    }
}
