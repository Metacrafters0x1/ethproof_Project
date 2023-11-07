// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract firstcontract {

    string public name;
    string public symbol;
    uint256 public totalSupply=0;

    mapping(address => uint256) balances;

    constructor() {
        name = "Bitcon";
        symbol = "BTC";
    }

    function mint(address account, uint256 amount) public {
        totalSupply += amount;
        balances[account] += amount;
    }

    function burn(address account, uint256 amount) public {    
        require(balances[account] >= amount, "Sorry low balance than requested");
        totalSupply -= amount;
        balances[account] -= amount;
    }
}
