// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Bank{
    mapping(address=>uint) balance;

    event Deposite(address indexed account, uint amount);
    event Withdraw(address indexed account, uint amount);

    function deposite(uint amount) public {
        require(amount>0, "Amount should be greater than zero");
        balance[msg.sender]+=amount;
        emit Deposite(msg.sender, amount);
    }

    function withdraw(uint amount) public {
        require(amount > 0, "Amount cannot be less than zero");
        require(balance[msg.sender] > amount, "Insufficient Balance");
        balance[msg.sender] -= amount;
        emit Withdraw(msg.sender, amount);
    }

    function getBalance() public view returns (uint){
        return balance[msg.sender];
    }
}
