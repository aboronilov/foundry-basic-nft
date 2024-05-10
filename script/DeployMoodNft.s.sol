// SPDX-License-Identifier: MIT License

pragma solidity ^0.8.18;

import {Script, console} from "lib/forge-std/src/Script.sol";
import {MoodNft} from "src/MoodNft.sol";
import {Base64} from "@openzeppelin/contracts/utils/Base64.sol";

contract DeployMoodNft is Script {
    function run() external returns (MoodNft) {
        string memory svgSad = vm.readFile("./img/sad.svg");
        string memory svgHappy = vm.readFile("./img/happy.svg");

        vm.startBroadcast();
        MoodNft moodNft = new MoodNft(
            svgToImageURI(svgSad),
            svgToImageURI(svgHappy)
        );
        vm.stopBroadcast();

        return moodNft;
    }

    function svgToImageURI(
        string memory svg
    ) public pure returns (string memory) {
        string memory baseURI = "data:image/svg+xml;base64,";
        string memory svgBase46Encoded = Base64.encode(
            bytes(string(abi.encodePacked(svg)))
        );

        return string(abi.encodePacked(baseURI, svgBase46Encoded));
    }
}
