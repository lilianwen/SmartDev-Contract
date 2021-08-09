pragma solidity >=0.4.0 <0.7.0;
import "./List.sol";

contract WhiteList is List {
    modifier onlyInWhiteList {
        require(isInList(tx.origin));
        _;
    }
    
    modifier onlyNotInWhiteList {
        require(!isInList(tx.origin));
        _;
    }
}