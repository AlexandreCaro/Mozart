{Browse {IsEven 3}}

%% Max: procedure

local
    X
    %% procedure definition
    proc {Max X Y Z}
        if X>=Y then Z=X else Z=Y end
    end
in
    %% procedure application
    {Max 4 3 X}
    {Browse X}
end

%% Max: function

local
    X
    %% function definition
    fun {Max X Y}
        if X>=Y then X else Y end
    end
in
    %% function application
    X = {Max 4 3}
    {Browse X}
end

%% Recursion

local
    fun {Factorial N}
        if N==0
        then 1
        else N*{Factorial N-1}
        end
    end
in
    %% 10!=3628800
    {Browse {Factorial 10}}
end