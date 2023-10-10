//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract DynamicArray {
    function CreateDynamicArray(uint256 size) public pure returns (uint256[] memory) {
        uint256[] memory newDynamicArray = new uint256[](size);

        for (uint256 i = 0; i < size; i++){
            newDynamicArray[i] = 1;
        }

        return newDynamicArray;
    }
}