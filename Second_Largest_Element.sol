//The secondMax() will find the second largest element in an array. 
//For Example - If array =[40, 12, 31, 6] then secondMax() will return 31. 

//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;
contract Week4
{
    function secondMax(uint[] memory arr) public pure returns(uint)
    {
        uint temp;
        for(uint i=0 ; i<arr.length-1;i++)
        {
            for(uint j=0 ; j<arr.length-1;j++)
            {
                if(arr[j]>arr[j+1])
                {
                    temp=arr[j];
                    arr[j]=arr[j+1];
                    arr[j+1]=temp;
                }
            }
        }
        return(arr[arr.length-2]);
    }
}
