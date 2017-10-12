pragma solidity ^0.4.15;

contract Summator {
  
  address owner;

  uint[10] integers;

  function Summator() public { }

  function initializeArray(uint initaialCount) public {
    uint counter = 0;
    while (counter < integers.length) {
        	integers[counter] = initaialCount;
        	counter++;
          initaialCount++;
    }
  }

  function getSum() constant public returns (uint) {                                        
    	uint sum = 0;
    	uint x = 0;
    	while (x < integers.length) {
        	sum = sum + integers[x];
        	x++;
       }
    return sum;
  }

}