//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;
// Task1:
// Create a function digitSum(int n). Where n>0.
// Return the sum of digit for n.
// For Example - If n=345 then digitSum() must return 12 i.e. 3+4+5 = 12
// If n=909 then digitSum() must return 18 i.e. 9+0+9 = 18
contract Aug26
{
    function digitSum(int256 n) public pure returns(int256)
    {
        int256 x1;
        int256 x2;
        int256 x3;
        x1=n/100;
        x2=(n-x1*100)/10;
        x3=n-x1*100-x2*10;
        return(x1+x2+x3);
    }
 //Sum Of Digit Method 2
    function digitSum(int256 n) public pure returns(int256)
    {
        int r;
        int sum=0;
        while(n>0)
        {
           r=n%10;
           sum=sum+r;
           n=n/10;
        }
        return(sum);
    }
 }
 





