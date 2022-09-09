//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;
contract Week2
{
    function primeNumber(uint num) public pure returns(uint)
    {
        for(uint i = 2  ; i<num ; i++)
        {
            if(num%i==0)
            {
                return 0;
            }
        }
        return 1;
    }
