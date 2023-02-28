// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherSender {

    struct Transaction {
        address sender;
        address recipient;
        uint256 amount;
        string message;
        uint256 timestamp;
    }

    Transaction[] transactions;
    uint256 totalTransactions;

    function sendEther(address payable recipient, uint256 amount, string memory message) public payable {
        require(msg.value == amount, "Insufficient funds");

        if (!recipient.send(amount)) {
            revert("Transaction failed"); // revert with an error message
        }

        transactions.push(Transaction({
            sender: msg.sender,
            recipient: recipient,
            amount: amount,
            message: message,
            timestamp: block.timestamp
        }));

        totalTransactions++;
    }

    function getTransaction(uint256 index) public view returns (
        address sender,
        address recipient,
        uint256 amount,
        string memory message,
        uint256 timestamp
    ) {
        require(index < totalTransactions, "Invalid transaction index");

        Transaction storage transaction = transactions[index];
        return (transaction.sender, transaction.recipient, transaction.amount, transaction.message, transaction.timestamp);
    }

    function getTotalTransactions() public view returns (uint256) {
        return totalTransactions;
    }

}
