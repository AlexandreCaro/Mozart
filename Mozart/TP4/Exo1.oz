local P in
    local Z in
        Z=1
        proc {P X Y} Y=X+Z end
    end
    local B A in
        A=10
        {P A B}
        {Browse B}
    end
end