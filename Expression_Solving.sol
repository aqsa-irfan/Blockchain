//Find the sum of the series 1 + x + x^2+ x^3+ .. + x^n

//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;
contract Week4
{
    function expression(uint x , uint n) public pure returns(uint)
    {
        uint sum=0;
        for(uint i=0 ; i<n+1;i++)
        {
            sum=sum+(x**i);
        }
        return sum;
    }
}
