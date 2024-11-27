// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployFundMe is Script{

    function run() external returns(FundMe){

        HelperConfig helperConfig = new HelperConfig();
        address ETHUSDPriceFeed = helperConfig.activeNetworkConfig();

        vm.startBroadcast();
        // Mock Price Feed
        FundMe fundMe = new FundMe(ETHUSDPriceFeed);
        vm.stopBroadcast();
        return fundMe;
    }
}