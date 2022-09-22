// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
/*
Improvement of Hackathon project
Original:
https://github.com/varmaharsh/theRudrasForMountainHack3.0

sep-20-2022:Improvements
1. better datastructure used,
2. removed duplicate functions/code and simplified them
3. Industry standards introduced such as Version variable introduced


*/

import "./ElectionPromiseTrackerV2.sol";

contract ElectionPromiseTrackerV3 is ElectionPromiseTrackerV2{
     function test() pure public returns(string memory) {
        return "upgraded";
    }
   
}
