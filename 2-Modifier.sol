pragma solidity ^0.4.0;
contract HelloWorldContract {
    string word = "Привет, пока!";
    address issuer;
    
    function HelloWorldContract() public {
        issuer = msg.sender;
    }
    
    modifier ifIssuer() {
        if (issuer != msg.sender) {
            throw;
        } else {
            _; // continue 
        }
    }
    
    function getWord() public constant returns (string) {
        return word;
    }
    
    function setWord(string newWord) ifIssuer public returns(string) {
        if (issuer != msg.sender) {
            return "Вы не создатель!";
        } else {
            word = newWord;
            return "Вы создатель!";
        }
    }
}