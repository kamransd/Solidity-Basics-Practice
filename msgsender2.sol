pragma solidity ^0.8.13;

contract Demo {
    function getaddress()public view returns(address){
        return msg.sender;
    }
    function returnblocktimestamp()public view returns(uint){
        return block.timestamp;
    }


}
