pragma solidity ^0.8.0;

contract TimeRestricted {
    uint public startTime;
    uint public endTime;

    modifier onlyDuringWindow(){
        require(block.timestamp >= startTime && block.timestamp <= endTime, "Function can only be called during a specific time window");
        _;
    }
     
     constructor(uint _duration){
         startTime = block.timestamp;
         endTime = startTime + _duration;
     }
}
