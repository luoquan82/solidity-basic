// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Search {
    int[] private array = new int[](100);

    constructor() {
        for (uint i = 0; i < array.length; i++) {
            array[i] = int(i);
        }
    }

    function _binarySearch(
        int key,
        uint left,
        uint right
    ) private returns (int) {
        uint mid = (left + right) / 2;
        if (array[mid] == key) return int(mid); // 找到了
        if (left == right) return -1; // 没有找到，数组中没有要查找的元素

        if (key < array[mid]) return _binarySearch(key, left, mid - 1);
        return _binarySearch(key, mid + 1, right);
    }

    function binarySearch(int key) public returns (int) {
        if (key < array[0] || key > array[array.length - 1]) return -1;
        return _binarySearch(key, 0, array.length - 1);
    }
}
