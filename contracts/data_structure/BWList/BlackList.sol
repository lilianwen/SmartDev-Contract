pragma solidity >=0.4.0 <0.7.0;
import "./List.sol";

contract BlackList is List {
    modifier onlyNotInBlackList {
        require(!isInList(tx.origin));
        _;
    }
    
    modifier onlyInBlackList {
        require(isInList(tx.origin));
        _;
    }
}
