// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SimpleToken is ERC20 {
    uint256 public burnRate = 100; // 1% burn rate (100 basis points)
    constructor() ERC20("SimpleToken", "SIMPLE") {
        _mint(msg.sender, 1000000 * 10 ** 18); // Mint 1 million tokens to deployer
    }
    
    // Custom function: burn tokens from sender with a burn rate
    function burnWithRate(uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        
        uint256 burnAmount = (amount * burnRate) / 10000; // Calculate burn amount (1%)
        
        _burn(msg.sender, burnAmount); // Burn 1% of the amount
    }
}
