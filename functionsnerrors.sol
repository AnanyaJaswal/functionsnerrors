// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DivideByZero {
    uint public result;

    function Require(uint numerator, uint denominator) public {
        require( denominator != 0, "Denominator cannot be zero");
        result = numerator / denominator;
    }

    function Assert(uint numerator, uint denominator) public {
        assert( denominator != 0);
        result = numerator / denominator;
    }

    function Revert(uint numerator, uint denominator) public pure returns (uint) {
        if( denominator == 0){

        revert("Denominator cannot be zero , please provide a valid denominator which must be a positive number");
        }
        return numerator / denominator;
    }
}
