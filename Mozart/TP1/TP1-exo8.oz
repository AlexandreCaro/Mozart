local P Q X Y Z in % 1
    fun {P X}
        X*Y+Z     %2
    end
    fun {Q Y}
        X*Y+Z      %3
    end
    X=1
    Y=2
    Z=3
    {Browse {P 4}}  % 11
    {Browse {Q 4}}   %7
    {Browse {Q {P 4}}} %(4) 
end

%% Version 2:

local P Q X Y Z in % 1
    fun {P Y}
        X*Y+Z     %2
    end
    fun {Q X}
        X*Y+Z      %3
    end
    X=1
    Y=1
    Z=3
    {Browse {P 4}}  % 11
    {Browse {Q 4}}   %7
    {Browse {Q {P 4}}} %(4) 
end

%% Version 3:

local P Q X Y Z in % 1
    fun {P Z}
        X*Y+Z     %2
    end
    fun {Q Y}
        X*Y+Z      %3
    end
    X=1
    Y=2
    Z=3
    {Browse {P 4}}  % 11
    {Browse {Q 4}}   %7
    {Browse {Q {P 4}}} %(4) 
end