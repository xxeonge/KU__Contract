//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract SmartContrat {
	uint256 public a = 2;
	function _createContract() public view returns (uint256) {
		return a;
    }
}
