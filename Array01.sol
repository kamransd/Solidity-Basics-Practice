pragma solidity ^0.8.0;

contract Array {

    uint[] public number;

    function addElement(uint num) public {
        number.push(num);
    }
    function size()public view returns(uint){
        return number.length;
    }
    function remove(uint index)public {
        delete number[index];
    }
}
