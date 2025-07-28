// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Merge {
    function mergeArray(
        uint256[] memory arr1,
        uint256[] memory arr2
    ) public pure returns (uint256[] memory) {
        uint256 len1 = arr1.length;
        uint256 len2 = arr2.length;
        uint256 idx1 = 0;
        uint256 idx2 = 0;
        uint idx = 0;
        uint256[] memory result = new uint256[](len1 + len2);
        while (true) {
            if (idx1 < len1 && idx2 < len2) {
                if (arr1[idx1] <= uint256(arr2[idx2])) {
                    result[idx++] = arr1[idx1++];
                } else {
                    result[idx++] = uint256(arr2[idx2++]);
                }
            } else if (idx1 < len1) {
                result[idx++] = arr1[idx1++];
            } else if (idx2 < len2) {
                result[idx++] = arr2[idx2++];
            }

            if (idx == len1 + len2) break;
        }

        return result;
    }
}
