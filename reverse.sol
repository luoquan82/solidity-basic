// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Reverse {
    function reverseStr(string memory str) public pure returns (string memory) {
        // 1、将字符串转化为字节数组
        bytes memory origin = bytes(str);
        uint len = origin.length;
        bytes memory result = new bytes(len);
        // 2、反转字节数组
        for (uint i = 0; i < len; i++) {
            result[i] = origin[len - 1 - i];
        }
        // 3、将字节数组转化为字符串
        return string(result);
    }
}
