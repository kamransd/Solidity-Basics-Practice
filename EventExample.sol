pragma solidity ^0.8.0;

contract EventExample {
    event Addition(uint a, uint b, uint reult);

    function addNumbers(uint a, uint b) public returns (uint){
      uint result = a+b;
      emit Addition(a,b,result);
      return result;
    }
}
