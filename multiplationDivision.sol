pragma solidity ^0.8.13;

contract MultiplationDivision {

    uint public count = 1;
    function getMuliply()public {

        count *= 5+3;
    }
    function getDivision()public {

        count /=40;
    }

}
