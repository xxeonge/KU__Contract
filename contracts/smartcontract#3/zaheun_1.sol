// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract fourExample{
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