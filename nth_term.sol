// Create a function nthTerm(uint n, uint a, uint b, uint c) where n is the nth term to find and a,b,c are the three terms of the series.

// For Example - If n=5 a=1 b=2 c=3 then nthTerm() must return 11 as S(1) = 1 S(2) = 2
// S(3) = 3 S(4) = S(3) + S(2) + S(1) = 1+2+3 = 6 S(5) = S(4) + S(3) + S(2) = 6 + 3 + 2 = 11
//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;
contract Week2
{

    function nthTerm(uint n , uint a , uint b , uint c)public pure returns(uint)
    {
        uint[20] memory array1;
        array1[1]=a;
        array1[2]=b;
        array1[3]=c;
        uint i;
        for(i=4;i<=n;i++)
        {
            array1[i]=array1[i-1]+array1[i-2]+array1[i-3];
        }
        return(array1[n]);
    }
}
