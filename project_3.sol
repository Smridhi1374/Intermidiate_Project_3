// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract What is ERC20, ERC20Burnable, Ownable {
    constructor(address initialOwner) ERC20("What", "lol") Ownable(initialOwner) {
        _mint(msg.sender, 100);
    }

    function customMint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function customBurnTokens(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function customTransferTokens(address to, uint256 amount) public {
        _transfer(msg.sender, to, amount);
    }
}
