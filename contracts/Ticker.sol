pragma solidity ^0.4.8; 

contract Ticker{
    uint centsToWei = 110; 
    address owner; 
    event StuffMe(uint stuff); 
     modifier onlyOwner(){
        if(msg.sender != owner)
        throw;
        _;
        
   }    
    function setRate (uint rate) {
        centsToWei = rate; 
        StuffMe(rate); 
    }
    function getRate() public returns (uint rate){
        return centsToWei;  
    }

}