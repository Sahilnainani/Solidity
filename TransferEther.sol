// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract TransferEther {
    address payable public owner;

    struct Transection{
        address receiver;
        address sender;
        uint val;
    }
    // To Store transections
    Transection[] transec;

    constructor(){
        owner=payable(msg.sender);
    }

    function TransferTo(address payable receiver) external payable{

        require(address(this).balance>=msg.value,"Insufficient contract balance");
        require(owner==msg.sender, "Invalid User");
        require(msg.value>0, "Invalid Amount");

        receiver.transfer(msg.value);

        Transection memory temp = Transection(msg.sender, receiver, msg.value);
        transec.push(temp);
    }

    function viewTransections()public view returns(Transection[] memory){
        return(transec);
    }
    receive() external payable {}

}
