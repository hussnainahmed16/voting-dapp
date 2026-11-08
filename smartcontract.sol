// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimplePoll {
    uint256 public round = 1;
    uint256 public candidate1Votes;
    uint256 public candidate2Votes;
    
    // Tracks if an address voted in the current round
    mapping(uint256 => mapping(address => bool)) public hasVoted;

    // 1. Write Function: Cast vote for Candidate 1 or 2
    function vote(uint256 _candidateId) public {
        require(!hasVoted[round][msg.sender], "You have already voted!");
        require(_candidateId == 1 || _candidateId == 2, "Choose 1 or 2");

        hasVoted[round][msg.sender] = true;

        if (_candidateId == 1) {
            candidate1Votes++;
        } else {
            candidate2Votes++;
        }
    }

    // 2. Read Function: Get vote totals
    function getVotes() public view returns (uint256, uint256) {
        return (candidate1Votes, candidate2Votes);
    }

    // 3. Read Function: Check if an address already voted
    function checkHasVoted(address _voter) public view returns (bool) {
        return hasVoted[round][_voter];
    }

    // 4. Write Function: Reset poll for a new round
    function resetPoll() public {
        round++;
        candidate1Votes = 0;
        candidate2Votes = 0;
    }
}