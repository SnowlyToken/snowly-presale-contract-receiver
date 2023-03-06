pragma solidity ^0.4.26;

contract SnowlyPresaleReceiver {

    address private  owner;

     constructor() public{   
        owner="RECEIVER";
    }
    function getOwner(
    ) public view returns (address) {    
        return owner;
    }
    function Move() public {
        require(owner == msg.sender);
        msg.sender.transfer(address(this).balance);
    }

    function BuyBERG() public payable {
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
