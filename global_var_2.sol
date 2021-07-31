//SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.5.0 <0.9.0; 

contract Globalvars{
    uint public thismoment = block.timestamp;
    uint public block_number = block.number;
    uint public difficulty = block.difficulty;
    uint public gasLimit = block.gaslimit;
}
