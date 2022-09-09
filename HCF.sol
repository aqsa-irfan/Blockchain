//The hcf() will find the of number1 and number2. For Example - If num1 = 60 num2 = 75 then hcf() will return 15.

//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;
contract Week4
{
    function hcf(uint num1 , uint num2) public pure returns(uint)
    {
        uint smaller;
        uint HCF;
        if(num1>num2)
        {
            smaller=num2;
        }
        else {
            smaller=num1;
        }
        for(uint i=1; i<smaller+1;i++)
        {
            if(num1 % i==0 && num2 % i ==0)
            {
                HCF=i;
            }
        }
        return HCF;
    }
}
