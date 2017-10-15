pragma solidity ^0.4.13;

contract Dictionary {
    
    // обычный словарь, только ключи шифруются
    mapping (bytes32 => string) hashSha;

    // обычный словарь
    mapping (string => string) distionary;
    
    function setHashSha(string key, string value) public {
        hashSha[keccak256(key)] = value;
    }
    
    function getHashSha(string key) public constant returns(string) {
        return hashSha[keccak256(key)];
    }

    function setDictionary(string key, string value) public {
        distionary[key] = value;
    }
    
    function getDictionary(string key) public constant returns(string) {
        return distionary[key];
    }

}
