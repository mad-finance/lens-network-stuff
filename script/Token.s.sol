// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Token} from "../src/Token.sol";

contract Deploy is Script {
    Token public token;

    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        token = new Token("Test Token 3", "TEST3");

        vm.stopBroadcast();
    }
}

contract Mint is Script {
    Token public token;

    address tokenAddress = 0xf8a82068870e9488bf641ec4C1BDfd24A11D0a2c; // update this to the one you want to mint
    address recipient = 0x21aF1185734D213D45C6236146fb81E2b0E8b821; // update this to the person you want to send to

    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        token = Token(tokenAddress);
        // mint 1 billion tokens
        token.mint(recipient, 1_000_000_000e18);

        vm.stopBroadcast();
    }
}
