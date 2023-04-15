%% Genericity

declare
fun {Map F L}
    case L of nil then nil
    [] H|T then {F H}|{Map F T}
    end
end

{Browse {Map fun {$ X} X*X end [7 8 9]}}

%% Instantiation

declare
fun {MakeAdd A}
    fun {$ X} X+A end
end

Add5 = {MakeAdd 5}

{Browse {Add5 100}}

%% Composition

declare
fun {Compose F G}
    fun {$ X} {F {G X}} end
end

Fnew = {Compose fun {$ X} X*X end
                fun {$ X} X+1 end}

{Browse {Fnew 2}}

%% Reduce

declare
fun {FoldL L F U}
    case L of nil then U
    [] H|T then {FoldL T F {F U H}}
    end
end

S = {FoldL [5 6 7] fun {$ X Y} X+Y end 0}

{Browse S}

%% Encapsulation

declare
fun {Zero} 0 end
fun {Inc H}
N={H}+1 in
    fun {$} N end
end

Three = {Inc {Inc {Inc Zero}}}

{Browse {Three}}

%% Delayed execution

proc {IfTrue Cond Stmt}
    if {Cond} then {Stmt} end
end

Stmt = proc {$} {Browse 111*111} end
{IfTrue fun {$} 1<2 end Stmt}

%% Building a while loop

declare
fun {While S Cond Transform}
    if {Cond S} then
        {While {Transform S} Cond Transform}
    else S end
end

%% {While Init Cond Transform}

{Browse {While s(10 0) fun {$ S} S.1>0 end fun {$ S} s(S.1-1 S.1+S.2) end}}