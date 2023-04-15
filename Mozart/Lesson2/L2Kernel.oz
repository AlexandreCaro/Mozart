fun {Length Xs N} %% Length of a list
    case Xs
    of nil then N
    [] X|Xr then {Length Xr N+1}
    end
end

%% Translated into kernel language:

proc {Length Xs N R}
    case Xs 
    of nil then R=N
    else
        case Xs
        of X|Xr then
            local N1 in
                N1=N+1
                {Length Xr N1 R}
            end
        else
            raise typeError end
        end
    end
end

N = {Length L Z} %% equivalent to {Length L Z N}