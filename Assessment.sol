// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

//import "hardhat/console.sol";

contract Assessment {
    
    // declares a state variable "owner" of type "address payable"
    address payable public owner;
    // declares a state variable "balance" of type "uint256"
    uint256 public balance;

    // defines the event "withdraw" and "deposit"
    event Deposit(uint256 amount);
    event Withdraw(uint256 amount);

    // constructor
    constructor(uint initBalance) payable {
        owner = payable(msg.sender);
        balance = initBalance;
    }
    // public view function that returns the contract's balance
    function getBalance() public view returns(uint256){
        return balance;
    }

    // public payable function for depositing balance into the contract.
    function deposit(uint256 _amount) public payable {
        uint _previousBalance = balance;

        // make sure this is the owner
        require(msg.sender == owner, "You are not the owner of this account");

        // perform transaction
        balance += _amount;

        // assert transaction completed successfully
        assert(balance == _previousBalance + _amount);

        // emit the event
        emit Deposit(_amount);
    }

    // custom error
    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);

    // public function for withdrawing balance from the contract
    function withdraw(uint256 _withdrawAmount) public {
        require(msg.sender == owner, "You are not the owner of this account");
        uint _previousBalance = balance;
        if (balance < _withdrawAmount) {
            revert InsufficientBalance({
                balance: balance,
                withdrawAmount: _withdrawAmount
            });
        }

        // withdraw the given amount
        balance -= _withdrawAmount;

        // assert the balance is correct
        assert(balance == (_previousBalance - _withdrawAmount));

        // emit the event
        emit Withdraw(_withdrawAmount);
    }

    //  New function 1: Return the owner address
    function getOwner() public view returns (address) {
        return owner;
    }

    // New function 2: Return the contract's current balance
    function getContractBalance() public view returns (uint256) {
        return 
        address(this).balance;
    }

    // New function 3: Return if the caller is the owner
    function isOwner() public view returns (bool) {
        return msg.sender == owner;
    }
} 
