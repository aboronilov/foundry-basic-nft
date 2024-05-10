// SPDX-License-Identifier: MIT License

pragma solidity ^0.8.18;

import {Script} from "lib/forge-std/src/Script.sol";
import {MoodNft} from "src/MoodNft.sol";
import {DeployMoodNft} from "script/DeployMoodNft.s.sol";
import {Test, console} from "lib/forge-std/src/Test.sol";

contract TestDeployMoodNft is Test {
    DeployMoodNft public deployer;

    // MoodNft public moodNft;

    function setUp() public {
        deployer = new DeployMoodNft();
        // moodNft = deployer.run();
    }
}
