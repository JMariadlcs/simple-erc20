// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {SimpleToken} from "../src/SimpleToken.sol";

contract SimpleTokenTest is Test {
    SimpleToken public token;
    address public user = address(1);

    function setUp() public {
        token = new SimpleToken();
    }

    function test_InitialBalance() public view {
        assertEq(token.balanceOf(address(this)), 1000000 * 10 ** token.decimals());
    }

    function test_BurnWithRate() public {
        uint256 initialBalance = token.balanceOf(address(this));
        uint256 burnAmount = 1000 * 10 ** token.decimals();
        
        token.burnWithRate(burnAmount);
        
        // Should burn 1% (10 tokens) of the specified amount
        uint256 expectedBurnAmount = (burnAmount * 100) / 10000; // 1% = 10 tokens
        uint256 expectedRemaining = initialBalance - expectedBurnAmount;
        assertEq(token.balanceOf(address(this)), expectedRemaining);
    }

    function test_BurnRateCalculation() public view {
        uint256 amount = 10000 * 10 ** token.decimals(); // 10,000 tokens
        uint256 expectedBurnAmount = (amount * 100) / 10000; // 1% = 100 tokens
        
        assertEq(expectedBurnAmount, 100 * 10 ** token.decimals());
    }
}
