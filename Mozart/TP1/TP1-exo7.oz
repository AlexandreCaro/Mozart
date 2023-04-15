%% Exercice:

local
    X
    fun {Maximum X Y Z}
        if X >= Y then {Max X Y}
        else if Y >= Z then {Max Y Z} end
    end
in
    Z = {Maximum 4 6 5}
    {Browse Z}
end