pragma solidity ^0.4.25;

pragma experimental ABIEncoderV2;

import "./Crypto.sol";

contract ShaTest{
    bytes _data = "Hello, ShaTest";
    Crypto crypto;

    constructor() public {
        crypto = Crypto(0x5006);
    }

    function getSha256(bytes memory _memory) public returns(bytes32 result)
    {
        return sha256(_memory);
    }

    function getKeccak256(bytes memory _memory) public returns(bytes32 result)
    {
        return keccak256(_memory);
    }

    function getRipemd160(bytes memory _memory) public returns(bytes20 result)
    {
        return ripemd160(_memory);
    }

    function getData() public view returns(bytes memory)
    {
        return _data;
    }
}
