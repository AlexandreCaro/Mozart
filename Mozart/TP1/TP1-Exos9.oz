declare X=3
end

{Browse X+2}
{Browse X*2}

%% 1

fun {Add2}
    Y = X 
    Z = Y+2
    {Browse Z}
end

{Add2}


/*
local
    X
    fun{Add2}
        X+2
    end
in
    Y = {Add2}
    {Browse Y}
end

%% 2

local
    X
    fun {Mul2 X}
        X*2
    end
in
    X = {Mul2 10}
    {Browse X}
end

*/