// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Counter {
    uint public count;

    // Function to get the current count value
    function get() public view returns (uint) {
        return count;
    }

    //Function to increment count by 1.
    function increment() external {
        count += 1;
    }


    // Function to decrement count by 1.
    function decrement() external {
        count -= 1;
    }
}