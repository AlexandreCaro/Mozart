%% demander le drive d'ingé

declare
fun {Take Xs N}
    if N==0 then nil
    else
        case Xs
        of nil then nil
        [] H|T then H|{Take T N-1}
        end
    end
end

{Browse {Take [r a p h] 2}}
{Browse {Take [r a p h] 7}}
{Browse {Take [r [a p] h] 2}}

declare
fun {Drop Xs N}
    if N==0 then Xs
    else
        case Xs
        of nil then nil
        [] H|T then {Drop T N-1}
        end
    end
end

{Browse {Drop [r a p h] 2}}
{Browse {Drop [r a p h] 7}}
{Browse {Drop [r [a p] h] 2}}