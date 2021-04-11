// Declain solidity version
pragma solidity ^0.5.16;

contract Election {

    // Candidate model
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Fetch Candidate
    mapping(uint => Candidate) public candidates;

    // In solidity there is no way to check the size of a mapping or iterate over the key-value pairs
    // So we keep track of the count
    uint public candidateCount;

    // Store candidate 
    string public candidate;
    // Read candidate

    constructor () public {
        // Initialize state variable
        addCandidate("Godzilla");
        addCandidate("Mothra");
    }


    // The memory keyword creates a var in dynamic memory and will not be stored
    function addCandidate (string memory name) private {
        candidateCount++;
        candidates[candidateCount] = Candidate(candidateCount, name, 0);
    }
}