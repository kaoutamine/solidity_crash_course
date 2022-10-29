//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 price;
    mapping(address => bool) tickets;

    function buyTicket() public payable {
        require(price == msg.value, "the price is incorrect");
        tickets[msg.sender] = true;
    }
}
