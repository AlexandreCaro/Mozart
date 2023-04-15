%% Les types de données: ADT, objects, ... sortent assez souvent.
%% Il peut demander de savoir les coder.

%% On définit les fonctions à l'intérieur d'une fonction pour l'encapsulation.

declare
fun {NewStack}

    C={NewCell nil}
    fun {IsEmpty} @C==nil end
    fun {Push X} C:=X|@C end
    fun {Pop}
        if {IsEmpty} then nil
        else S
        in S=@C.1
            C:=@C.2
            S
        end
    end
in
    stack(isEmpty:IsEmpty push:Push pop:Pop)
end

fun {Eval Xs}
    S = {NewStack}
in
    for X in Xs do
        case X
        of '+' then
            {S.push {S.pop}+{S.pop}}
        [] '-' then Op1 Op2 in
            Op1 = {S.pop}
            Op2 = {S.pop}
            {S.push Op2-Op1}
        [] '*' then
            {S.push {S.pop}*{S.pop}}
        [] '/' then Op1 Op2 in
            Op1 = {S.pop}
            Op2 = {S.pop}
            {S.push Op2/Op1}
        [] N then {S.push N}
        end
    end
    {S.pop}
end
        
