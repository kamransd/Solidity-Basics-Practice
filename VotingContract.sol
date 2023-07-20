pragma solidity ^0.8.0;

contract Voting {

    struct candidate {
        string name;
        uint voteCount;
    }

    mapping(address => bool) public voters;
    candidate[] public candidates;

    constructor(string[] memory _candidateNames){
        for (uint 1 = 0; 1 < _candidateNames.length; 1++){
            candidates.push(candidate({
              name: _candidateNames[i],
              votecount: 0
            }));

            
        }
    }
}
