// // SPDX-License-Identifier: UNLICENSED
// pragma solidity ^0.8.9;

// contract sampleDao {

//         // Create a mapping of ID to Candidates
//     mapping(address => Candidates) public candidatesMap;
//     // Number of candidates created
//     uint256 public numberOfCandidates;

//     /// @dev 
//     /// @param CandidateName - the 
//     /// @return Returns the candidate Registered No
//     function createCandidate(string candidateName,string candidateProfile, string[] promises)
//         external
//         returns (uint256)
//     {
//         // check if Candidate is already present
//         require(candidatesMap[candidateName]  == bytes4(0x0), "Candidate already exists");
//           mapping(address => bool) _voters;
//         //promise1 => completion
//         mapping(string => bool) _promises;
//     //     for(int i=0;i<promises.length;i++)
//     //     {
//     //         _promises[promises[i]];
//     //     }
         
//     //    candidatesMap[candidateName] 
//     //     = Candidates( numberOfCandidates, msg.sender,candidateName,candidateProfile,block.timestamp + 5 minutes,false,_voters,_promises);
//     //     Candidates storage candidates = candidatesMap[candidateName];

//         numberOfCandidates++;
        
//         return numberOfCandidates - 1;
//     }

//     /// @dev executeProposal allows any user to mark promises true
//     /// @param CandidateName - the index of the proposal to execute in the proposals array
//     function executeCandidate(string candidateName)
//         external
        
//         inactiveCandidateOnly(candidateName)
//     {
//         Candidates storage candidates = Candidates[candidateName];
//         candidates.executed = true;
//     }

//     // Create a modifier which only allows a function to be
//     // called if the given CandidateName deadline HAS been exceeded
//     // and if the CandidateName has not yet been executed
//     modifier inactiveCandidateOnly(string candidateName) {
//         require(
//             Candidates[candidateName].deadline <= block.timestamp,
//             "DEADLINE_NOT_EXCEEDED"
//         );
//         require(
//             Candidates[candidateName].executed == false,
//             "Candidate_ALREADY_EXECUTED"
//         );
//         _;
//     }

//     // Create a modifier which only allows a function to be
//     // called if the given CandidateName's deadline has not been exceeded yet
//     modifier activeCandidateOnly(string CandidateName) {
//         require(
//             Candidates[CandidateName].deadline > block.timestamp,
//             "DEADLINE_EXCEEDED"
//         );
//         _;
//     }


//     // Create a struct named Proposal containing all relevant information
//     struct Candidates {
//         // interger generated in contract
//         uint256 registerationNo;
//         // will be candidate address
//         address candidateId;
//         // for which Election year, this candidate is particpating.
//         uint256 ElectionYear;

        
//         CandidateProfile candidateProfile;

//         // deadline - cannot be executed after the deadline has been exceeded.
//         uint256 deadline;
             
//         // executed - Cannot be executed before the deadline has been exceeded.
//         bool executed;
       
//          // voters - a map voters address which voters have already Voted.
//         mapping(address => Promises) voters;

//     }
//     struct CandidateProfile
//      {
//         // candidate
//         string candidateName;
//         string dateOfBirth;

//         string placeOfBirth;
//         uint256 criminalCase;
//         uint256 netWorth;
//         uint256 liquidity;
        

//      }
//     struct Promises
//     {
//         //HealthCare, Education, Defense
//         string PromiseId;

//         Progress progressTracker;

//         bool Voted;
//     }

//     enum Progress { Fullfiled=2, Ongoing=1, Unfulfilled=0 }

//     receive() external payable {}

//     fallback() external payable {}
// }