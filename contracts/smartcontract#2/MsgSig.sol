// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MsgSig {
    uint public sum; 
    bytes4 public sig; // 함수를 keccak256 으로 해시한 값에서 앞의 4바이트만 따온 값  

    // 0xb0180432 == sigAdd(uint256,uint256)
    function sigAdd(uint a, uint b) public returns (bytes4) {
        sum = a+b;
        sig = msg.sig;
        return msg.sig;
    }

    function callFunction (uint a, uint b) public returns (uint) {
        bytes memory _sig = abi.encodeWithSelector(sig,a,b); // return -> bytes
        (bool success, bytes memory data) = address(this).call(_sig); // call(bytes)
        return success ? abi.decode(data,(uint)) : 0;
    }
}