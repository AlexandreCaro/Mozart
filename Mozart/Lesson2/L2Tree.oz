declare
T = t(100 t(10 leaf leaf leaf) t(20 leaf leaf leaf) leaf)

%% Lookup in the tree

fun {Lookup K T}
    case T
    of leaf then notfound
    [] tree(key:Y value:V T1 T2) andthen K==Y then found(V)
    [] tree(key:Y value:V T1 T2) andthen K<Y then {Lookup K T1}
    [] tree(key:Y value:V T1 T2) andthen K>Y then {Lookup K T2}
    end
end

%% Inserting information

fun {Insert K W T}
    case T
    of leaf then tree(key:K value:W leaf leaf)
    [] tree(key:Y value:V T1 T2) andthen K==Y then tree(key:K value:W T1 T2)
    [] tree(key:Y value:V T1 T2) andthen K<Y then tree(key:Y value:V {Insert K W T1} T2)
    [] tree(key:Y value:V T1 T2) andthen K>Y then tree(key:Y value:V T1 {Insert K W T2})
    end
end

%% Deleting information