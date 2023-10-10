// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract fourExample{
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }

    function Owner2(address newOwner) public onlyOwner {
        owner = newOwner;
    }
    
    function Public() public pure returns (string memory) {
        return "i am a public";
    }

    function Internal() internal pure returns (string memory) {
        return "i am a internal";
    }

    function External() external pure returns (string memory) {
        return "i am a external";
    }
    
    function Private() private pure returns (string memory) {
        return "i an a private";
    }
}

contract InheritExample is fourExample {
    function callPublic() public pure returns (string memory) {
        return Public();
    }
}