// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract TupleContract {

    function a() public pure returns (uint, bool, uint) {
        return (42, true, 17);
    }

    function b() public pure returns (uint, bool, uint) {
        (uint third, bool second, uint first) = a(); 
        return (first, second, third); 
    }
}
