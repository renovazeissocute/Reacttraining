// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

abstract contract Auction {
    struct Product {
        string Brand;
        string SerialNumber;
    }

    enum AuctionState { STARTED, ENDED, CANCELED }
    function bid() virtual payable external;
    function getMyBid(address bidder) virtual public view returns (uint256);
    function endAuction() virtual external;
    function cancelAuction() virtual external;
    function getProductInfo() virtual external view returns (string memory, string memory);
    function withdraw() virtual external;
    function getHighestBid() virtual external view returns (uint256);

    event WithdrawnEvent(address withdrawer, uint256 amount, uint256 timestamp);
    event EndedEvent(address message, uint256 timestamp);
    event CanceledEvent(string message, uint256 timestamp);
    event BidEvent(address bidder, uint256 amount, uint256 timestamp);
}