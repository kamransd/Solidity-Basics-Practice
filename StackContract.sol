pragma solidity ^0.8.0;

contract Stack {
     uint[] private stack;

     function push(uint value) public {
         stack.push(value);
     }

     function pop() public returns(uint) {
         require(stack.length > 0, "stack is empty");
         uint value = stack[stack.length - 1];
         stack.pop();
         return value;
     }
}
