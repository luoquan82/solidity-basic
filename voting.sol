// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Voting {
    mapping(string => int) result;

    function vote(string memory name) public {
        result[name]++;
    }

    function resetVotes(string memory name) public {
        result[name] = 0;
    }

    function getVote(string memory name) public view returns (int) {
        return result[name];
    }
}
