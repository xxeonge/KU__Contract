// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GasLeft {
    uint public gasUsed;

    uint32[] public ExampleArray;

    function Example(uint32 _num) external returns (uint, uint) {
        uint initialGas = gasleft();
        ExampleArray.push(_num);
        uint finalGas = gasleft();

        gasUsed = initialGas - finalGas;
        return(initialGas , finalGas);
    }
}