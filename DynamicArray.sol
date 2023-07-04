pragma solidity ^0.8.0;
//Dynamic Array 

contract array {
    uint[] public numbers = [1,45,34,99];
    function getarr() public view returns(uint[] memory){
        return numbers;
    }
}
