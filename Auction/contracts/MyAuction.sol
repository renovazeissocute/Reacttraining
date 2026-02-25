// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import "./Auction.sol";

contract MyAuction is Auction {
    Product public myProduct;
    address payable public owner;
    address public highestBidder;
    uint public highestBid;
    uint public auctionStarted;
    uint public auctionEnded;
    AuctionState public STATE;
    
    mapping(address => uint) public bids;
    address [] public bidders;

    // Added the underscore to _durationInMinutes to match the logic below
    constructor(string memory _brand, string memory _serial, uint _durationInMinutes) {
        myProduct = Product(_brand, _serial);
        auctionStarted = block.timestamp;
        auctionEnded = auctionStarted + (_durationInMinutes * 1 minutes);
        owner = payable(msg.sender);
        STATE = AuctionState.STARTED;
    }


    function getProductInfo() override external view returns (string memory, string memory) {
        return (myProduct.Brand, myProduct.SerialNumber);
    }
    function bid() override payable external {}
    function getMyBid(address bidder) override public view returns (uint256) {}
    function endAuction() override external {}
    function cancelAuction() override external {}
    function withdraw() override external {}
    function getHighestBid() override external view returns (uint256) {}
}