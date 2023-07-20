pragma solidity ^0.8.0;

contract AddressWhitelist {
    address[] public whitelist;

    function addToWhitelist(address user) public {
        whitelist.push(user);
    }
}
