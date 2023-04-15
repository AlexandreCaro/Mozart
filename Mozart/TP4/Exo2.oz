declare MakeMulFilter in
fun {MakeMulFilter N}
        fun {$ I}
            if I mod N == 0 then true
            else false
            end
    end
end

declare
fun {Filter L F}
    case L
    of nil then nil
    [] H|T then case {F H}
        of true then H|{Filter T F}
        [] false then {Filter T F}
        end
    end
end

%% 3

declare X in
    X = 5|6|7|8|9|nil

declare FilterPair in
FilterPair = {Filter X Divisible2}

{Browse FilterPair}

%% 4

declare Divisible3 in
    Divisible3 = {MakeMulFilter 3}

declare Filter3 in
    Filter3 = {Filter X Divisible3}

%% Faire exos 3 et 6