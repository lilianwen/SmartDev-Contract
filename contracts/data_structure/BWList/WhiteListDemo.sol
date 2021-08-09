pragma solidity >=0.4.0 <0.7.0;
import "./WhiteList.sol";

contract WhiteListDemo {
    WhiteList whiteList;
    
    constructor() public {
        whiteList = new WhiteList();
    }
    
    function add2WhiteListTest(address _account) public {
        whiteList.add2List(_account);
        require(whiteList.isInList(_account));
    }
    
    function removeFromWhiteListTest(address _account) public {
        whiteList.removeFromList(_account);
        require(!whiteList.isInList(_account));
    }
    
    function queryWhiteListTest(address _account) public view returns(bool) {
        return whiteList.isInList(_account);
    }
}