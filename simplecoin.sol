pragma solidity >0.7.0 <0.9.0;

contract SimpleCoin {
    address public minter;

    mapping(address => uint)public balanceof;

    constructor(){
        minter = msg.sender;

    }
    function mint(address receiver, uint amount) public {
        balanceof [receiver] += amount;
    }
}
