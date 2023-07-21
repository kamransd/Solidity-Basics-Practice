pragma solidity ^0.8.0;

contract ResettableCounter {
    uint private counter;
    uint private initialCounterValue;

    constructor(){
        initialCounterValue = 0;
    }
    function increment() external {
        counter++;
    }
    function resetCounter()external view returns(uint){
        return counter;
    }
}
