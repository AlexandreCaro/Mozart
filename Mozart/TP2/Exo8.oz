declare
fun {Prefix L1 L2}
    case L1
        case L2
        of nil then false
        [] H|T then {Prefix L1.2 T}
        end
        of nil then false


%% Yolino#5545