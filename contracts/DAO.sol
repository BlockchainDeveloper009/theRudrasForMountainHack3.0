// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.7;

// contract DAO {
//     //Vote Type
//     enum vote_type {
//         FULFILLED,
//         UNFULFILLED,
//         ONGOING
//     }

//     // Promise object
//     struct Agenda {
//         string domain;
//         string description;
//         // keep incrementing these based on vote
//         uint256 fulfilled;
//         uint256 unfulfilled;
//         uint256 ongoing;
//     }

//     //define the candidate here
//     struct Candidate {
//         // this address is same as candiadte address
//         address id;
//         string name;
//         string constituency;
//     }

//     mapping(uint256 => Agenda) internal promises;
//     mapping(uint256 => address[]) internal promiseIdToAddress;

//     // use this to check if user calling the function is candiadate or voteer
//     address[] internal candidateAddresses;

//     // address to candidates
//     mapping(address => Candidate) candidates;

//     // use this to find all promises by a candidate and then use the promises mapping to return them all
//     mapping(address => uint256) candidateAdressToPromiseId;

//     // add a function to return a whether a given address is candidate or not
//     //Harish function1
//      function IsAnCandidate(address addr) external returns (bool){
//         //check if this address exists in candidates map
//         if(candidates[addr]== bytes4(0x0)){
//             return false;
//         }else{
//             return true;
//         }
//      }
//     // function to return list of candidates with info, this should be an array

//     // function to return details of a candidate given his id/address

//     // function to return all promises given a candidate id/address

//     // function to edit a promise object given its promise id,
//     // check if msg.sender is not a candidate
//     //basically take promise id and vote type as input and check if msg.sender is not already in promiseIdToAddress mapping
//     // if not them update the promise vote count based on if it was fulfilled, unfulfilled etc

//     // function to add promise given a candidate id and promise details
//     // check if msg.sender is a candidate
//     // take all promise details except the fulfilled, unfulfilled counts etc, assign then zero

//     // function to add a candidate
//     // write a script to call this function and load the candidates on any env

//     // write a script to deploy this on any network

//     // Please don't change the structure, so that I can take this forward from where you leave

//     // Do not commit anything, priotise storing candidates with script and deploying contracts, I can fill contract functions
//     // share text files on discord I'll commit it when time starts
// }
