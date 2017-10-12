pragma solidity ^0.4.15;

contract GlobalVariablesContract {
  
  address owner;

  function GlobalVariablesContract() public {
    owner = msg.sender;
  }

  function getCurrentMinerAddress() public constant returns (address) { // get CURRENT block miner's address, 
		return block.coinbase;
	}
	
	function getCurrentDifficulty() public constant returns (uint) {
		return block.difficulty;
	}
	
	function getCurrentGaslimit() public constant returns (uint) { // the most gas that can be spent on any given transaction right now
		return block.gaslimit;
	}
	
	function getCurrentBlockNumber() public constant returns (uint) {
		return block.number;
	}
    
  function getBlockTimestamp() public constant returns (uint) { // returns current block timestamp in SECONDS (not ms) from epoch
    	return block.timestamp; // also "now" == "block.timestamp", as in "return now;"
  }
    
  function getMsgData() public constant returns (bytes) { // 0xc8e7ca2e
    	return msg.data;
  }
    
  function getMsgSender() public constant returns (address) { 
    return msg.sender; // Returns the address of whomever made this call, (i.e. not necessarily the creator of the contract)
  }
    
  function getMsgValue() public constant returns (uint) { 
    return msg.value; // returns amt of wei sent with this call
  }


  function getMsgGas() public constant returns (uint) {													
    	return msg.gas;
  }
    
	function getTxGasprice() public constant returns (uint) {	// "gasprice" is the amount of gas the sender was *willing* to pay.
    	return tx.gasprice;
  }
    
  function getTxOrigin() public constant returns (address) {	// returns sender of the transaction
    	return tx.origin;
  }
    
	function getContractAddress() public constant returns (address) {
		return this;
	}
    
  function getContractBalance() public constant returns (uint) {
    return this.balance;
  }

}