// SPDX-License-Identifier: MIT

// Deploy mocks when we are on a local anvil chain
// Keep track of contract address across different chains

// Sepolia ETH/USD
// Mainnet ETH/USD

pragma solidity ^0.8.26;

import {Script} from "forge-std/Script.sol";

contract HelperConfig {
    // if we're on a local anvil - deploy mocks
    // otherwise, grab the existing address from the live network
    NetworkConfig public activeNetworkConfig;

    struct NetworkConfig {
        address priceFeed; // ETH/USE price feed address
    }

    constructor(){
        if(block.chainid == 11155111){
            activeNetworkConfig = getSepoliaETHConfig();
        } else if (block.chainid == 1){
            activeNetworkConfig = getMainnetETHConfig();
        } else {
            activeNetworkConfig = getAnvilETHConfig();
        }
    }
    function getSepoliaETHConfig() public pure returns(NetworkConfig memory){
        // price feed address
        NetworkConfig memory sepoliaConfig = NetworkConfig({priceFeed: 0x694AA1769357215DE4FAC081bf1f309aDC325306});
        return sepoliaConfig;
    }

    function getMainnetETHConfig() public pure returns(NetworkConfig memory){
        // price feed address
        NetworkConfig memory mainnetConfig = NetworkConfig({priceFeed: 0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419});
        return mainnetConfig;
    }

    function getAnvilETHConfig() public pure returns(NetworkConfig memory){
        //price feed address
    }

}