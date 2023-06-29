pragma solidity ^0.8.13;

contract number {
    uint data;
    constructor(uint _data){
        data =_data;
    }
    function getdata() public view returns(uint){
        return data;
    }
}
