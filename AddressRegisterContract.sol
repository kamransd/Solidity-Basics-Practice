pragma solidity ^0.8.0;

contract AddressRegistry {
    mapping(string => address) public nameToAddress;

    function registerAddress(string memory name) public {
        require(nameToAddress[name]==address(0), "Name is already registered");
        nameToAddress[name]= msg.sender;
    }
}
