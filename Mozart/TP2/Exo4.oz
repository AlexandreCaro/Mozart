case L
of nil then {Browse rien}
[] H|T then {Browse H} {Browse T}
end

declare fun {Print L}
    case L
    of nil then empty
    [] H|T then nonEmpty
    else other
    end
end

declare
fun {Head L}
    case L
    of nil then nil
    [] H|T then H
    end
end

{Browse {Head [a b c]}}

declare
fun {Tail L}
    case L
    of nil then nil
    [] H|T then T
    end
end

{Browse {Tail [a b c]}}

declare
fun {Length L}
    fun {Length L A}
        case L
        of nil then A
        [] H|T then {Length T A+1}
        end
    end
in {Length L 0}
end

{Browse {Length [r a p h]}}
{Browse {Length [[b o r] i s]}}
{Browse {Length [[l u i s]]}}

declare
fun {Append L1 L2}
    case L1
    of nil then L2
    [] H|T then H|{Append T L2}
    end
end

{Browse {Append [r a] [p h]}}
{Browse {Append [b [o r]] [i s]}}
{Browse {Append nil [l u i s]}}