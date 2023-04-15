declare
fun {NewStack} nil end
fun {Push S X} @X|S end
fun {Pop S X} X:=S.1 S.2 end
fun {IsEmpty S} S==nil end

fun {Eval L}
    
    S = {NewStack}
    R1 = {NewCell 0}
    R2 = {NewCell 0}
    R3 = {NewCell 0}
in
    for Element in L do
        if Element == '+' then
            {Pop S R1}
            {Pop S R2}
            R3 := @R2+@R1
            {Push S R3}
        elseif Element == '-' then
            {Pop S R1}
            {Pop S R2}
            R3 := @R2-@R1
            {Push S R3}
        elseif Element == '*' then
            {Pop S R1}
            {Pop S R2}
            R3 := @R2*@R1
            {Push S R3}
        elseif Element == '/' then
            {Pop S R1}
            {Pop S R2}
            R3 := @R2/@R1
            {Push S R3}
        else
            {Push S Element}
        end
    end
    {Pop S R3}
    @R3
end

{Browse {Eval [13 45 '+' 89 17 '-' '*']}}

%% Correction

declare
fun {NewStack}
    {NewCell nil}
end

fun {IsEmpty S}
    @s==nil
end

proc {Push S X}
    S:=X|@S
end

fun {Pop S}
    if {IsEmpty S} then nil
    else R in
        R:=@S.1
        S=@S.2
        R
    end
end

fun {Eval Xs}
    S = {NewStack}
in
    for X in Xs do
        case X of '+' then
            {Push S {Pop S}+{Pop S}}
        [] '-' then Op1 Op2 in
            Op1 = {Pop S}
            Op2 = {Pop S}
            {Push S Op2-Op1}
        [] '*' then
            {Push S {Pop S}*{Pop S}}
        [] '/' then Op1 Op2 in
            Op1 = {Pop S}
            Op2 = {Pop S}
            {Push S Op2/Op1}
        [] N then {Push S N}
        end
    end
    {Pop S}
end

{Browse {Eval [13 45 '+' 89 17 '-' '*']}}