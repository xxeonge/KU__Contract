// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// calldata, memory, string

contract ExplicitExample {
    struct Seoyoung {
        string name;
        uint256 id;
    }

    Seoyoung[] seoyoungee;

    function TestStorage(uint _index) public {
        Seoyoung storage imseoyoung = seoyoungee[_index];
        imseoyoung.id = _index;
    }

    function TestMemory(uint _index, string memory _name) public view returns (string memory) {
        Seoyoung memory imseoyoung2 = seoyoungee[_index];
        _name = imseoyoung2.name;
        return _name;
    }

    function TestCalldata(uint _index, string calldata _name) public view returns (string memory) {
        Seoyoung memory imseoyoung2 = seoyoungee[_index];
        return imseoyoung2.name = _name;
    }
}