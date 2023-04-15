declare
proc {Sum N ?R}
    local B One in
        One = 1
        B = (N==One)
        if B then
            R = 1
        else
            local R1 N1 One Square in
                One = 1
                Square = N*N
                N1 = N-1
                {Sum N1 R1}
                R = Square + R1
            end
        end
    end
end

X 
{Sum 2 X}
{Browse X}

declare
fun {SumAux N Acc}
    if N==1 then Acc+1
    else {SumAux N-1 N*N+Acc} end
end

declare
proc {SumAuxK N Acc ?R}
    local B One in
        One = 1
        B=(N==One)
        if B then
            R=Acc+One
        else
            local R1 N1 Square One in
                One = 1
                N1 = N-One
                Square = N*N+Acc
                {SumAuxK N1 Square R1}
                R = R1
            end
        end
    end
end

fun {Sum N}
    {SumAux N 0}
end

{Browse {Sum 2}}

declare X 
    {SumAuxK 2 0 X}
    {Browse X}