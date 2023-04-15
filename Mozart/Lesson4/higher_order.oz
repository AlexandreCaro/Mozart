declare
fun {Compose F G}
    fun {$ X} {F {G X}}
    end
end

declare
Fnew={Compose fun {$ X} X*X end
fun{$ X} X+1 end}

{Browse {Fnew 10}}
{Browse 29*29*29}

declare
fun {Compose1 F}
    fun {$ G}
        fun {$ X} {F {G X}} end
    end
end

declare
Fnew2 = {{Compose1 fun {$ X} X*X end} fun {$ X} X+1 end}

{Browse {Fnew2 12}}

declare
Q ={Compose1 fun {$ X} X*X end}

