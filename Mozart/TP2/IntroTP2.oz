declare X1=a|nil

L2=a|(b|c|nil)|d|nil

L3=proc {$} {Browse oui} end | proc {$} {Browse non} end | nil

L4=est|une|liste|nil

L5 = (a|p|nil)|nil

%% D'abord l'exo 1 puis le 4

{Browse L2}

{Browse L3}

{L3.1} %% Afficher la première procédure de L3
{L3.2.1} %% Afficher la seconde procédure de L3

{Browse L2.2} %% Afficher la liste [b c] d

declare
fun {Head L}
    L.1
end

{Browse {Head [a b c]}}

declare fun {Tail L}
    L.2
end

{Browse {Tail [a b c]}}

%% Surligner + Feed Region pour executer une partie du code
