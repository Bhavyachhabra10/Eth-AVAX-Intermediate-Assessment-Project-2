Assessment Smart Contract

Overview:
This Solidity smart contract, named Assessment, serves as a basic example of a contract managing funds with deposit and withdrawal functionalities. 
It allows an owner to deposit and withdraw funds, and provides methods to interact with the contract's state.

Contract Details:
Owner: The contract has an owner, initialized during deployment, who has special privileges such as depositing and withdrawing funds.
Balance: Tracks the current balance of the contract in wei (the smallest denomination of Ether).
Events: Emits Deposit and Withdraw events whenever funds are deposited or withdrawn.

Description:
1. Creata a contract named Assessment.
2. Declare a ststic variables like owner and balance.
3. Define a event.
4. Create constructor.
5. Create a public view function as getBalance.
6. Create a public payable function for depositing balances.
7. Then perform the transaction.
8. Then custom error.
9. Create a public function for withdrawing balance
10. Withdraw given amount.
11. Assert given balance.
12. Emit the event.
13. Then i have created 3 functions:
14. 1. Return the owner address.
    2. Return the contract's current balance.
    3. Return if the caller is the owner.
 
Then deployed the contract and show the balance in the frontend and Owner also showing.


Author:
Bhavya Chhabra

License:
This Assessment smart contract is licensed under the MIT License
