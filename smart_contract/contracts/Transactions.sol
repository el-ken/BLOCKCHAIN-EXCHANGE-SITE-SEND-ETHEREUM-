//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract ethereumSender {
   
    event Transfer(
        address from, 
        address getter, 
        uint amount, 
        string word, 
        uint256 timestamp, 
        string assign
    );

    struct senderStruct{
        address from;
        address getter;
        uint amount;
        string word;
        uint256 timestamp;
        string assign;
    }

    senderStruct[] transactions;

    function addToBlockchain(
            address payable getter, 
            uint amount, 
            string memory word, 
            string memory assign
        ) public {
        transactions.push(senderStruct(msg.from, getter, amount, word, block.timestamp, assign));
        emit Transfer(
            msg.from, 
            getter, 
            amount, 
            word, 
            block.timestamp,
            assign
         );
    }


    function getAllTransactions() public view returns(senderStruct[] memory) {
       return transactions;
    }


    function getTransactionCount() public view returns(uint256){
        return TransactionCount;
    }
}
