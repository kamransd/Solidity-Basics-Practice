pragma solidity ^0.8.0;

contract DynamicArrayStorage {
    uint[] public data;

    function addData(uint value) public {
       data.push(value);
    }
}
