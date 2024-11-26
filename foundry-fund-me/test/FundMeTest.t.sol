// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundMeTest is Test{
    FundMe fundMe;
        
    function setUp() external{
        fundMe = new FundMe();
        // our fundMe(variable) of type FundMe
        // is going to be a new FundMe() contract
    }

    function testMinimumDollarIsFive() public view {
        assertEq(fundMe.MINIMUM_USD(), 5e18);
    }

    function testOwnerIsMsgSender() public view {
        console.log(address(this));
        assertEq(fundMe.i_owner(), address(this));
    }

    // What can we do to work with addresses outside our system?

    // 4 DIFFERENT TYPES OF TESTS

    // 1. Unit
    //    - Testing a specific part of our code

    // 2. Integration
    //    - Testing how our code works with other parts of our code

    // 3. Forked
    //    - Testing our code on a simulated real environment

    // 4. Staging
    //    - Testing our code in a real environment that is not a production environment

    function testPriceFeedVersionIsAccurate() public view {
        uint256 version = fundMe.getVersion();
        assertEq(version, 4);
    }
}