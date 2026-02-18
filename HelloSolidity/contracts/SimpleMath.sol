// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract SimpleMath{
    uint public x; // unsigned intger type
    bool y;
    function setX(uint newX) public {
        x = newX;
    }
    function setXandY(uint newX, bool newY) public {
        x = newX;
        y = newY;
    }
    function getY() public view returns(bool){
        return y;
    }
    function getXandY() public view returns (uint, bool){
        return (x, y);
    }
    function add(uint a, uint b) public pure returns (uint){
        return a + b;
    }
}