pragma solidity ^0.8.0;

contract Whitelist {
    mapping(address => bool) public whitelist;

    modifier onlyWhitelisted() {
        require(whitelist[msg.sender], "only whitelisted addresses call this function");
        _;
    }
    constructor(){
        whitelist[msg.sender] = true;
    }
    function addToWhitelist(address user) public onlyWhitelisted {
        whitelist[user] = true; 
    }
}
