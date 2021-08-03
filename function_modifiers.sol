//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;

contract property{
    uint public price;
    address public owner;
    
    constructor(){
        price = 100;
        owner = msg.sender;
        
    }
    
    modifier onlyOwner(){
        require(owner == msg.sender);
        _;
    }
    
    function changeowner(address _owner) public onlyOwner{
        owner=_owner;
    }
    
    function setprice(uint _price)public onlyOwner{
        price=_price;
    }
}
