// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
  struct Candidate {
    string name;
    uint voteCount;
  }

  struct Voter {
    bool hasVoted;
    uint votedCandidateId;
  }

  address public owner;
  Candidate[] public candidates;
  mapping(address => Voter) public voters;

  event VoteStatus(string message, address voter);

  modifier onlyOwner() {
    require(msg.sender == owner, "Only owner can call this function");
    _;
  }

  constructor(string[] memory candidateNames) {
    owner = msg.sender;
    for (uint i = 0; i < candidateNames.length; i++) {
      candidates.push(Candidate({ name: candidateNames[i], voteCount: 0 }));
    }
  }

  function vote(uint candidateId) public {
    if (voters[msg.sender].hasVoted) {
      emit VoteStatus("You have already cast your vote", msg.sender);
      return;
    }
    if (candidateId >= candidates.length) {
      emit VoteStatus("Invalid candidate ID", msg.sender);
      return;
    }

    voters[msg.sender] = Voter({ hasVoted: true, votedCandidateId: candidateId });
    candidates[candidateId].voteCount++;
    emit VoteStatus("Vote cast successfully", msg.sender);
  }
  function getCandidates() public view returns (Candidate[] memory) {
    return candidates;
  }

  function endVoting() public onlyOwner {
    selfdestruct(payable(owner));
  }
}
