// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract A {
    function afunction(uint a, uint b) public pure returns (uint) {
        unchecked { return a + b; }
    }

    function bfunction(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}