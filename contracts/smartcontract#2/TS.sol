// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TS {
    function transfer(address payable to, uint amount) payable public {
        to.transfer(amount);
    }

    function send(address payable to, uint amount) payable public returns (bool b) {
        b = to.send(amount);
    }
}