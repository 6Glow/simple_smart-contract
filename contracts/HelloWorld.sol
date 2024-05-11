// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract HelloWorld {
    // Events
    event MessageChanged(string oldmsg, string newmsg);

    // State variable
    string public message;

    // Constructor
    constructor(string memory firstmessage) {
        message = firstmessage;
    }

    // Function to update message
    function update(string memory newmessage) public {
        string memory oldmsg = message;
        message = newmessage;

        emit MessageChanged(oldmsg, newmessage);
    }
}



