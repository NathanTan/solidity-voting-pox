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
        candidate = "Godzilla";
    }


    function addCandidate (string _name) private {
        candidateCount++;
        candidates[candidateCount] = Candidate(candidateCount, _name, 0);
    }

}