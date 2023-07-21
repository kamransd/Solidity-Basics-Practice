pragma solidity ^0.8.0;

contract OwnerCounter {
    address private owner;
    uint private counter;

    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender == owner, "only the owner can call this function");
        _;
    }
    function increment()external onlyOwner {
        counter++;
    }
    function getCounter() external view returns(uint){
        return counter;
    }
}
