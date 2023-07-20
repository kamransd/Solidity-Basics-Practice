pragma solidity ^0.8.0;

contract Escrow {
    address public buyer;
    address public seller;
    uint public amount;

    constructor(address _seller) {
        buyer = msg.sender;
        seller = _seller;

    }
    function deposit() public payable {
        amount =msg.value;
    }
    function releasePayment() public {
        require(msg.sender == seller, "only the seller can release the payment");
        payable(seller).transfer(amount);
    }
    function refundPayment() public {
        require(msg.sender==buyer, "only the buyer can request a refund");
        payable(buyer).transfer(amount);
    }
}
