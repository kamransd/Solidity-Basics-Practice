pragma solidity ^0.8.13;

contract demo {
    struct student{
        string name;
        uint class;
    }
    mapping(uint=>student)public data;

    function setter(uint _roll, string memory _name ,uint _class) public{
        data [_roll]= student(_name, _class);
    }

}
