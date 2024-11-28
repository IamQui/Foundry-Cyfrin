// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";
import {HelperConfig} from "./HelperConfig.s.sol";
import {console} from "forge-std/console.sol";

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

    function printStorageData(address contractAddress) public view {
        for(uint256 i = 0; i < 10; i++){
            bytes32 value = vm.load(contractAddress, bytes32(i));
            console.log("Value at location", i, ":");
            console.logBytes32(value);
        }
    }

    function printFirstarrayElement(address contractAddress) public view {
        bytes32 arrayStorageSlotLength = bytes32(uint256(2));
        bytes32 firstElementStorageSlot = keccak256(abi.encode(arrayStorageSlotLength));
        bytes32 value = vm.load(contractAddress, firstElementStorageSlot);
        console.log("First element in array:");
        console.logBytes32(value);
    }
}