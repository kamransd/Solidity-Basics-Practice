pragma solidity ^0.8.0;

contract array {
    uint[]public num = [1,2,45,67,89,0];
    function getArr()public returns(uint){
        num[0] = 3;
        return num[0];

    }
}
