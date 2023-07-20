pragma solidity ^0.8.0;

contract Subscription {
    mapping(address => bool) public subscribers;

    event Subscribed(address indexed subscriber);
    event Unsubscribed(address indexed subscriber);

    function subscribe() public {
        require(!subscribers[msg.sender], "Already subscribed");
        subscribers[msg.sender] = true;
        emit Subscribed(msg.sender);
    }
}
     
