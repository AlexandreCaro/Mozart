declare
fun {Length L}
    if L==nil then A
    A=A+1
    {Length L.2}
    end
end

{Browse {Length [r a p h]}}