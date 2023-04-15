declare
class Counter
    attr value
    meth init
        value:=0
    end
    meth inc
        value:=@value+1
    end
    meth get(X)
        X=@value
    end
end

MonCompteur = {New Counter init}
for X in [65 81 92 34 70] do {MonCompteur inc} end

{Browse {MonCompteur get($)}}

