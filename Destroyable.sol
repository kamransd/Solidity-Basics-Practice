 import "./Ownable.sol";
 
 pragma solidity ^0.8.8;

 contract Destroyable  {
       
       function destroy() public {
           address payable receiver = msg.snder;
           selfdestruct(receiver);
       }
 }
