// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract SimpleMathV2{
    uint public x; // unsigned intger type
    bool y;
    function setX(uint newX) public {
        x = newX;
    }
    function add(uint a, uint b) public pure returns (uint){
        return a + b;
    }
    function subtract(uint a, uint b) public pure returns (uint){
        return a - b;
    }
    function multiply(uint a, uint b) public pure returns (uint){
        return a * b;
    }
    function divide(uint a, uint b) public pure returns (uint){
        return a / b;
    }
}