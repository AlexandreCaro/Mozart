local
    X=1+1
    Y
in
    Y=3
    {Browse X*Y}
end

local X=3
in
    local
        %%shadows the outer X
        X=4
    in
        {Browse X}
    end
    %%later, browse original X
    {Browse X}
end