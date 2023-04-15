fun {Sum L}
    if L==nil then
        0
    else
        {Head L} + {Sum {Tail L}}
    end
end

fun {Sum2 L A} %% Sum of list elements with accumulator
    if L==nil then
        A
    else
        {Sum2 {Tail L} A + {Head L}}
    end
end

fun {Nth L N} %% Returns the Nth element of a list
    if N==1 then {Head L}
    elseif N>1 then
        {Nth {Tail L} N-1}
    end
end

fun {Sum L} %% Sum with pattern matching
    case L
    of nil then 0
    [] H|T then H+{Sum T}
    end
end