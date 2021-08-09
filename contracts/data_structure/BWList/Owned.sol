pragma solidity >=0.4.0 <0.7.0;

contract Owned {
    address public owner;
    
    event TrasferOwnership(address oldOwner, address newOwner);

    constructor() public {
        owner = tx.origin;
    }

    modifier onlyOwner {
        require(tx.origin == owner); 
        _;
    }

    function transferOwnership(address newOwner) onlyOwner public {
        address oldOwner = owner;
        owner = newOwner;
        emit TrasferOwnership(oldOwner, newOwner);
    }
}