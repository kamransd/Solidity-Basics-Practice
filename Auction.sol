pragma solidity ^0.8.0;

contract Auction {
    address public manager;
    address public highestBidder;
    uint public highestBid;
    bool internal auctionClosed;

    constructor(){
        manager = msg.sender;  
    }
    function closeAuction() internal {
        require(msg.sender == manager, "Only the manager can close the auction");
        require(!auctionClosed, "Auction is already closed");

        auctionClosed = true;
        payable(highestBidder).transfer(highestBid);
    }
}
