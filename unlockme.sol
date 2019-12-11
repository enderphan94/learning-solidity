pragma solidity ^0.5.9;

contract Privacy {

  bool public locked = true;
  uint256 public ID = block.timestamp;
  uint8 private flattening = 10;
  uint8 private denomination = 255;
  uint16 private awkwardness = uint16(now);
  string hello = "cat"; 
  bytes8 public a = "who is ";
  string public b = "if you can find the secret, you are the best";
  
  struct Entry {
    uint256 id;
    uint256 value;
  }
  Entry c;      
  uint256[] d;
  bytes32[3] private data;
  Entry[] e; 

  

  constructor () public {
    d.push(1244);
    d.push(14);
    e.push(Entry(9, 99));
  }

  
  function Private(bytes32[3] memory _data) public {
    data = _data;
  }
  
  function unlock(bytes16 _key) public returns(string memory) {
    require(_key == bytes16(data[2]));
    locked = false;
    return "{^^}";
  }
  
  function Privates(bytes32 _data) public {
    data[2] = _data;
  }
}

