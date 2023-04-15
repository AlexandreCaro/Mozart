declare X=7
Y=8
Z=6

{Browse {Max {Max X Y} {Max Y Z}}}

{Browse {Not X==0}}
{Browse {Not X>0}}
{Browse {Not X<0}}

declare
fun {Maximum X Y Z} {Browse {Max {Max X Y}} {Max Y Z}}
end

{Maximum X Y Z}

declare
fun {Sign X}
    if X==0 then 0
else if X<0 then -1
else then 1
end
end