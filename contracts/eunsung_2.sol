// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library SafeMath {
    function sub(uint8 a, uint8 b) internal pure returns (uint8) {
        require(a - b >= 0, "SaffeMath: addition overflow");
        return a - b;
    }
}

contract LibraryEx {
    using SafeMath for uint8;
    uint8 public a;

    function overflow(uint8 _num1, uint8 _num2) public returns(uint8) {
        a = _num1.sub(_num2);
        return a;
    }
}
