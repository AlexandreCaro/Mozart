declare
X1=5|X2
X2 = 6|X3
X3 = 7|nil

{Browse X1.1} %% Access the head
{Browse X1.2} %% Access the tail

fun {Head Xs}
    Xs.1
end

fun {Tail Xs}
    Xs.2
end

{Browse {Head X1}}

declare X = [3 2 1]

{Head X}