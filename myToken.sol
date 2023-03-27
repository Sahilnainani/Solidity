// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public tokenname="REGA";
    string public tokenabb="RGA";
    uint public totalsupply=0;

    // mapping variable here
    mapping(address=>uint) public balances;

    // mint function
    function mint(address _address, uint _value) public {
        totalsupply+=_value;
        balances[_address]+=_value;
    }

    // burn function
    function burn(address _address, uint _value) public {
        if(balances[_address]>=_value){
            totalsupply-=_value;
            balances[_address]-=_value;
        }
    }
}

contract Calculator{
    function add(uint a,uint b)external pure returns(uint){
        return a+b;
    }
    function sub(int a,int b)external pure returns(int){
        return a-b;
    }
    function mult(uint a,uint b)external pure returns(uint){
        return a*b;
    }
    function div(uint a,uint b)external pure returns(uint){
        return a/b;
    }
}

contract IfElse{
    function example(uint _p) external pure returns(uint){
        if(_p<10){
            return 1;
        }
        else if(_p<20){
            return 2;
        }
        else{
            return 3;
        }
    }
    function ternary(uint _p) external pure returns(uint){
        return _p<10? 1: 2;
    }
}
