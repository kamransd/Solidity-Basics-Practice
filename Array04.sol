pragma solidity ^0.8.0;

contract array {
    uint[]public num = [1,2,45,67,89];
    function getArr() public {
        num.push(6);
    }
}
// output show 6
