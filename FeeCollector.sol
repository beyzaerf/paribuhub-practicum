pragma solidity ^0.8.7;

contract FeeCollector {  
    address public owner;
    uint256 public balance;
    
    constructor() {
        owner = msg.sender; // person that deployed the contract
    }
    
    receive() payable external {
        balance += msg.value; // keeping track of balance
    }
    
    
    function withdraw(uint amount, address payable destAddr) public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(amount <= balance, "Insufficient funds");
        
        destAddr.transfer(amount); // send funds to given address
        balance -= amount;
    }
}