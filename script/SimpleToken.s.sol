// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {SimpleToken} from "../src/SimpleToken.sol";

contract SimpleTokenScript is Script {
    SimpleToken public token;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        token = new SimpleToken();
        console.log("SimpleToken deployed at:", address(token));

        vm.stopBroadcast();
    }
} 