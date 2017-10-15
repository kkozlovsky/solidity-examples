pragma solidity ^0.4.13;

contract EmployeeCard {
    
    mapping (string => uint) salary;
    
    address owner;
    
    function EmployeeCard() public {
        owner = msg.sender;
    }
    
    function setData(string key, uint value) public {
        require(msg.sender == owner);
        salary[key] = value;
    }
    
    function getData(string key) public constant returns(uint) {
        return salary[key];
    }

}