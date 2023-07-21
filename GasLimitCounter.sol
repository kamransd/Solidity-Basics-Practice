pragma solidity ^0.8.0;

contract GasLimitCounter {
    uint private counter;

    function increment() external {
        counter++;
    }
    function consumeGas() external {
        while(gasleft() > 100000){
            counter++;
        }
    }
    function getCounter() external view returns(uint){
        return counter;
    }
}
