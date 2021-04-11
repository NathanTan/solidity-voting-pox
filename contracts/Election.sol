// Declain solidity version
pragma solidity ^0.5.16;

contract Election {

    // Store candidate 
    string public candidate;
    // Read candidate

    constructor () public {
        // Initialize state variable
        candidate = "Godzilla";

    }

}