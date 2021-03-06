pragma solidity >=0.4.21 <0.7.0;


contract Election {
    // Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    // Store accounts that have voted
    mapping(address => bool) public voters;
    // Store Candidates
    // Fetch Candidate
    mapping(uint => Candidate) public a;
    // Store Candidates Count
    uint public candidatesCount;

    // voted event
    event votedEvent (
        uint indexed _candidateId
    );
    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

           function addCandidate(string memory _name) private {
        candidatesCount ++;
        //candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}