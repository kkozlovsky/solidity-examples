pragma solidity ^0.4.0;
contract HelloWorldContract {
    string word = "Привет, пока!";
    address issuer;
    
    function HelloWorldContract() public {
        issuer = msg.sender;
    }
    
    function getWord() public constant returns (string) {
        return word;
    }
    
    function setWord(string newWord) public returns(string) {
        if (issuer != msg.sender) {
            return "Вы не создатель!";
        } else {
            word = newWord;
            return "Вы создатель!";
        }
    }
}