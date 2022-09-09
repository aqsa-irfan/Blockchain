//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;
contract TaskOf29Aug
{
//Reverse A Number
    function reverseNumber(uint num) public pure returns(uint)
    {
        uint r;
        uint sum=0;
        while(num>0)
        {
            r=num%10;
            sum=(sum*10)+r;
            num=num/10;
        }
        return(sum);
    }
}
