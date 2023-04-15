declare
fun {Fold L F U}
    case L
    of nil then U
    [] H|T then {Fold T F {F H U}}
    end
end

fun {MultiplyList L}
    {Fold L fun {$ X Y} X*Y end 1}
end

X = 1|2|3|4|nil

{Browse {MultiplyList X}}

fun {SubList L}
    {FoldL L fun {$ X Y} Y-X end 0}
end