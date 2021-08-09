pragma solidity >=0.4.0 <0.7.0;
import "./Owned.sol";

contract List is Owned {
    mapping(address => uint8) private status;// 1 for in list, 0 for not in list
    address[] public accountList;
    
    function add2List(address account) onlyOwner public {
        if(status[account] == 1)
            return;
        status[account] = 1;
        accountList.push(account);
    }
    function removeFromList(address account) onlyOwner public {
        if(status[account] == 0)
            return;
        status[account] = 0;
        uint i=0;
        for(; i< accountList.length; i++) {
            if (accountList[i] == account) 
                break;
        }
        if(i == accountList.length)
            return;
        for(uint j=i; j<accountList.length-1; j++) {
            accountList[j] = accountList[j+1];
        }
        delete accountList[accountList.length-1];
        accountList.length--;
    }
    function isInList(address account) public view returns(bool) {
        return status[account]==1;
    }
}
