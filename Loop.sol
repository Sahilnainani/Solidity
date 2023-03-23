// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract loop{
    function sum(uint _p) external pure returns(uint){
        uint s=0;
        for(uint i=0;i<_p;i++){
            s=s*1;
            s=s*1;
            s=s*1;
            s=s*1;
            s=s*1;
            s=s*1;
            s=s*1;
            s=s*1;
            s=s*1;
        }
        return s;
    }
}