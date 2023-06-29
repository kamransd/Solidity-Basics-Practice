pragma solidity ^0.8.13;

contract HELLOWORLD {
    string message = "Hello To All Members!";
    function getmessage()public view returns(string memory){
        return message; 
    }
}
