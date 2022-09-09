//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;
contract TaskOf3Sep
{
    //**********************************Reverse The Array********************************
    
    function reverseArray(uint[] memory arr , uint length) public pure returns(uint[] memory)
    {
        uint[] memory revArr=new uint[](length);
        uint j;
        for(uint i=length;i>0; i--)
        {
            revArr[j]=arr[i-1];
            j++;
        }
        return(revArr);
    }
    //*************Array To Even***************************************************
    
    function even(uint[] memory arr) public pure returns(uint[] memory)
    {
        for(uint i=0;i<arr.length;i++)
        {
            arr[i]=arr[i]*2;
        }
        return(arr);
    }

    //***************Sorting Array In Ascending Order*****************************************
    
    function sort(uint[] memory arr)public pure returns(uint[] memory)
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
        return(arr);
    }

    //*****************Count The Distinct Element In Array***************************
    
    function distinct(uint[] memory arr) public pure returns(uint)
    {
        uint count=1;
        uint i;
        uint j;
        for(i=1 ; i<arr.length ; i++)
        {
            for(j=0 ; j<i ; j++)
            {
                if(arr[i]==arr[j])
                {
                    break;
                }
            }
            if(i==j)
            {
                count++;
            }
        }
        return (count);
    }

    //**********************Search Specific Element In Array**********************
    
    function search(uint[] memory arr , uint element) public pure returns(bool)
    {
        uint count=0;
        for(uint i=0;i<arr.length;i++)
        {
            if(arr[i]==element)
            {count++;}
        }
        return(count>0);
    }

    //*************Sum Of All Elements Of Array***********************************
    
    function sumArray(uint[] memory arr) public pure returns(uint)
    {
        uint sum=0;
        for(uint i=0;i<arr.length;i++)
        {
            sum=sum+arr[i];
        }
        return(sum);
    }
   
}




