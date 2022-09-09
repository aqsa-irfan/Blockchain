// To check the given number is palindrome
    uint pal;
    function palindrome(uint n) public
    {
        pal=n;
        
    } 
    function thisPalindrome() public returns(bool)
    {
        uint x;
        uint r;
        uint s;
        s=0;
        x=pal;
        while(pal>0)
        {
            r=pal%10;
            s=(s*10)+r;
            pal=pal/10;
            
        }
        return(x==s);
    }
