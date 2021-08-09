pragma solidity >=0.4.0 <0.7.0;
import "./BlackList.sol";

contract BlackListDemo {
    BlackList blackList;
    
    constructor() public {
        blackList = new BlackList();
    }
    
    function add2BlackListTest(address _account) public {
        blackList.add2List(_account);
        require(blackList.isInList(_account));
    }
    
    function removeFromBlackListTest(address _account) public {
        blackList.removeFromList(_account);
        require(!blackList.isInList(_account));
    }
    function queryBlackListTest(address _account) public view returns(bool) {
        return blackList.isInList(_account);
    }
}