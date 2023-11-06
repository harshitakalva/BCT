// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MedicalInsurance {
    address public insurer;
    address public policyholder;
    uint256 public premium;
    uint256 public claimAmount;
    bool public isClaimProcessed;
    bool public isPolicyActive;

    event ClaimProcessed(address indexed insurer, address indexed policyholder, uint256 claimAmount);
    event PolicyActivated(address indexed insurer, address indexed policyholder, uint256 premium);
    event PolicyCancelled(address indexed insurer, address indexed policyholder);

    constructor(address _policyholder, uint256 _premium) {
        insurer = msg.sender;
        policyholder = _policyholder;
        premium = _premium;
        isClaimProcessed = false;
        isPolicyActive = true;

        emit PolicyActivated(insurer, policyholder, premium);
    }

    modifier onlyInsurer() {
        require(msg.sender == insurer, "Only the insurer can execute this.");
        _;
    }

    modifier onlyPolicyholder() {
        require(msg.sender == policyholder, "Only the policyholder can execute this.");
        _;
    }

    function cancelPolicy() public onlyInsurer {
        isPolicyActive = false;
        emit PolicyCancelled(insurer, policyholder);
    }

    function processClaim(uint256 _claimAmount) public onlyInsurer {
        require(isPolicyActive, "The policy is not active.");
        require(_claimAmount <= premium, "Claim amount exceeds the premium paid.");
        claimAmount = _claimAmount;
        isClaimProcessed = true;
        emit ClaimProcessed(insurer, policyholder, claimAmount);
    }
}