// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//origin은 트랜잭션 보낸 사람의 주소
contract CompareA {

    function FirstCall() public returns (address, address) {
        CompareB b = new CompareB();
        return b.SecondCall();
    }

    function GetCompareA() public view returns (address) {
        return address(this);
    }
}

//msg.sender는 스마트 컨트랙트 주소
contract CompareB {
    function SecondCall() public view returns (address, address) {
        return (msg.sender, tx.origin);
    }
}