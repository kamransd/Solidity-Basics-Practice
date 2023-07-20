   pragma solidity ^0.8.0;

contract GovernmentOfficials {
    struct Official {
        string name;
        string position;
    }
    mapping(uint => Official) public officials;
    uint public officialCount;

    function addOfficial(string memory name,string memory position) public {
        officialCount++;
        officials[officialCount]=Official(name, position);
    }
} 
