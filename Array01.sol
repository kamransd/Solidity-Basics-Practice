pragma solidity ^0.8.0;

contract Array {

    uint[] public number;
    // Any Value Store In Array Used Push Keyword
    function addElement(uint num) public {
        number.push(num);
    }
    //Total Length Of Array Value Used Length Keyword
    function size()public view returns(uint){
        return number.length;
    }
    //Delete Any Value of Array That Store In Array
    function remove(uint index)public {
        delete number[index];
    }
    //Last Value Store In Array Are Remove With The The Help Of Pop Keyword
    function getarr() public {
        number.pop(); 
    }
    
}
