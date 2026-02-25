// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract SimpleMathV2 {
    uint public x;
    bool y;

    function setX(uint newX) public {
        x = newX;
    }

    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    function subtract(uint a, uint b) public pure returns (uint) {
        return a - b;
    }

    function multiply(uint a, uint b) public pure returns (uint) {
        return a * b;
    }

    function divide(uint a, uint b) public pure returns (uint) {
        require(b != 0, "Division by zero");
        return a / b;
    }

function power(int256 base, int256 exponent) public pure returns (int256) {
    require(base != 0 || exponent >= 0, "0 cannot have negative exponent");

    int256 absBase = base < 0 ? -base : base;
    int256 absExp = exponent >= 0 ? exponent : -exponent;

    int256 result = 1;

    for (uint256 i = 0; i < uint256(absExp); i++) {
        result *= absBase;
    }

    if (exponent < 0) {
        result = (1e18) / result;
    }

    if (base < 0) {
        result = -result;
    }

    return result;
}


}