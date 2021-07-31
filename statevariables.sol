//SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.5.0 <0.9.0;

contract Property{
    int public price; //state variable 
    string constant public location = "INDIA"; // value never changed  
    
    // price=100; this is not permitted in solidity  
    
    function f1() public pure returns(int){
        int x=5; //local variables 
        x=x*2;
        return x;
        
       //  string s1="hhhh"; not allowed to use string directly inside the function 
       
       string memory s1="abc" ; // this is allowed  
       
    }
}
