// SPDX-License-Identifier: MIT License

pragma solidity ^0.8.18;

import {Script} from "lib/forge-std/src/Script.sol";
import {BasicNft} from "src/BasicNft.sol";

contract DeplyBasicNft is Script {
    function run() external returns (BasicNft) {
        vm.startBroadcast();
        BasicNft basincNft = new BasicNft();
        vm.stopBroadcast();
        return basincNft;
    }
}
