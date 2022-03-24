//SPDX-License-Identifier:Unlicense

pragma solidity ^0.8.0;

contract Whitelist{
 
 uint8 maxWhiteListedAddress;
 mapping(address => bool) public whiteListedAddresseses;
 uint8 public numberOfAddressesWhiteListed;

 constructor(uint8 _maxWhiteListedAddress){
     maxWhiteListedAddress = _maxWhiteListedAddress;
 }
 
 function addAddressToWhiteList() public {
     require(!whiteListedAddresseses[msg.sender],"already whiteListed account");
     require(numberOfAddressesWhiteListed<maxWhiteListedAddress,"cannot add anymore accounts");
     whiteListedAddresseses[msg.sender] = true;
     numberOfAddressesWhiteListed+=1;
 }

 function numAddressesWhitelisted() public view returns(uint8){
   return numberOfAddressesWhiteListed;
 }

 function whitelistedAddresses(address sender) public view returns(bool){
     return whiteListedAddresseses[sender];
 }

}