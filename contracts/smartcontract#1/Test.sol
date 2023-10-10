//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Test {
    uint256 public myVariable;
    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Owner");
        _;
    }

    constructor() {
        myVariable = 0;
        owner = msg.sender;
    }

    receive() external payable {
         //주석
    }

    event Atest(uint256 newValue);

    function setMyVariable(uint256 newValue) public onlyOwner {
        myVariable = newValue;
        emit Atest(newValue);
    }

    function getMyVariable() public view returns (uint256) {
        return myVariable;
    }   
}
