//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;
contract Election
{
    struct Candidate
    {
        string name;
        uint voteCount;
    }
    struct Voter
    {
        bool authorized;
        bool voted;
        uint vote;
    }
    address public admin;
    string public electionName;
    mapping (address => Voter) public voters;
    Candidate[]  public candidates;
    uint public totalVotes;
    modifier ownerOnly()
    {
        require(msg.sender==admin);
        _;
    }
    constructor (string  memory _name) 
    {
        admin=msg.sender;
        electionName=_name;
    }
    function addCandidate(string memory _name)ownerOnly  public
    {
        candidates.push(Candidate(_name , 0));
    } 
   
    function getNoOfCandidate() public view returns(uint)
    {
        return(candidates.length);
    }
    function authorize(address _person) public
    {
        voters[_person].authorized=true;
    }
    function vote(address _person ,uint voteIndex) public
    { 
    
        require(voters[_person].voted==false);
        require(voters[_person].authorized==true);
        voters[msg.sender].vote=voteIndex;
        voters[msg.sender].voted=true;
        candidates[voteIndex].voteCount += 1;
        totalVotes+=1;
        voters[_person].vote+=1;
    }
}


