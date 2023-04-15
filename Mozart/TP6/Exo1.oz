fun {Reverse Xs}
    fun {ReverseAux Xs Ys}
        case Xs of nil then Ys
        [] X|Xr then {ReverseAux Xr X|Ys}
        end
    end
in
    {ReverseAux Xs nil}
end

%% Etat explicite: cellule

%% C peut être vu comme un pointeur

fun {ReverseCell Xs}{
    C={Newcell nil}
in
    for E in Xs do
        C := E|@C
    end
@C
end
}

%% 3. Créer un état explicite pour Xs? Non puisque c'est une liste.