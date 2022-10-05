// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./WalkerHill.sol";
/**
contract TokenFarm is WalkerHill {
    //address public owner;
    WalkerHill public walkerHill;

    address[] public stakers;
    mapping (address => uint) public stakingBalance;
    mapping (address => bool) public hasStaked;
    mapping (address => bool) public isStaking;


    constructor(WalkerHill _walkerHill) public {
        walkerHill = _walkerHill;
        owner = msg.sender;
    }


    function stakeTokens(uint _amount) public {
        // Check token does not 0
        require(_amount > 0, "amount cannot be 0");

        // Trasfer WalkerHillToken for staking
        walkerHill.trasferFrom(msg.sender, address(this), _amount);

        // Update Staking Balance
        stakingBalance[msg.sender] = stakingBalance[msg.sender] + _amount;

        // Add user to stakers array
        if(!hasStaked[msg.sender]) {
            stakers.push(msg.sender);
        }

        // Update Stake Status
        isStaking[msg.sender] = true;
        hasStaked[msg.sender] = true;
    }

    function unstakeTokens() public {
        // Fetch staking balance
        uint256 balance = stakingBalance[msg.sender];

        // Check staked token not 0
        require(balance > 0, "staking balance cannot be 0");

        // Transfer WalkerHillToken to unstke
        walkerHill.transfer(msg.sender. balance);

        // Reset staking balance
        stakingBalance[msg.sender] = 0;

        // Update staking status 
        isStaking[msg.sender] = false;
    }



}

*/