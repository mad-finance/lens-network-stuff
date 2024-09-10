// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Token} from "../src/Token.sol";

contract TokenTest is Test {
    Token public token;

    function setUp() public {
        token = new Token("Test", "TEST");
    }

    function test_balance() public {
        assertEq(token.balanceOf(address(this)), 1_000_000e18);
    }
}
