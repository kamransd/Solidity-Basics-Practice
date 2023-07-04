pragma solidity ^0.7.5;

contract Payable {
     address payable public owner;

     constructor(){
         owner =payable(msg.sender);
     }
     function deposit() external payable {}

      function getbalance() external view returns(uint){
          return address(this).balance;
      }

}
