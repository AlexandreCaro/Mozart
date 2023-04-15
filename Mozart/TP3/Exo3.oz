proc {Q A} {P A+1} end

declare A=1

proc {P} {Browse A} end

{Browse {P}}

local P Q in %% Décrire l'environnment contextuel pour chaque fonction
    proc {P A R} R=A+2 end %% ou procédure {P->p1, Q->q}
    local P R in
        fun {Q A}  %% {P->p2, R->r}
            {P A R}
            R
        end
        proc {P A R} R=A-2 end %% {P->p2, R->r}
    end
    {Browse {Q 4}}
end
