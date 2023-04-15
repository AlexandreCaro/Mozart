declare
fun {MultList L}
    fun {MultList L A}
        case L
        of nil then 1
        [] H|T then H*{MultList T A}
        end
    end
in
    {MultList L 1}
end

{Browse {MultList [1 2 3 4]}}