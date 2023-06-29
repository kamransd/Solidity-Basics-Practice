pragma solidity ^0.8.13;

contract ConstructorTest {
    string message;

    constructor(string memory _message){
        message = _message;
    }
    function getmessage()public view returns(string memory){
        return message;
    }
}
