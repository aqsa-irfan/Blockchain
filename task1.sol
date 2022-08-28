//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;
contract Task1
{
    uint8 public variable  ;
    function set(uint8 _variable) public 
    {
        variable=_variable;
    }
    function get()public  view returns(uint8)
    {
        return variable;
    }
    function evaluate(int256 a , int256 b) public pure returns(int256)
    {
        return((a+b)-(a-b));
    }
    function find(uint a) public pure returns( uint)
    {
        require(a>0);
        return (a%3);

    }
    function average(int a , int  b , int c) public pure returns(int)
    {
        require(a>0 && b>0 && c>0);
        return((a+b+c)/3);
    }
}
