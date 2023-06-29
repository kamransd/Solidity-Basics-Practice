pragma solidity ^0.8.13;

contract counter {

    uint count;

    function get()public view returns(uint){
        return count;

    }


function increment () external {
    count += 1;
}
function decrement () external  {
    count -= 1;
}

}
