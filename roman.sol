// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Roman {
    mapping(bytes1 => uint) private romanValues;
    // 初始化映射，设置罗马数字基本字符对应的值
    constructor() {
        romanValues["I"] = 1;
        romanValues["V"] = 5;
        romanValues["X"] = 10;
        romanValues["L"] = 50;
        romanValues["C"] = 100;
        romanValues["D"] = 500;
        romanValues["M"] = 1000;
    }

    function ConvertRomanToInt(
        string calldata romanStr
    ) public view returns (uint) {
        bytes memory romanBytes = bytes(romanStr);
        require(
            romanBytes.length > 0,
            "Empty string is not a valid Roman numeral"
        );
        uint len = romanBytes.length;
        uint result = 0;
        uint previousNum = 0;

        for (uint i = len - 1; i >= 0; i--) {
            bytes1 c = romanBytes[i];
            uint curNum = romanValues[c];

            if (curNum < previousNum) {
                result -= curNum;
            } else {
                result += curNum;
            }
            previousNum = curNum;
        }
        return result;
    }

    // function ConvertIntToRoman() returns (string) {

    // }
}
