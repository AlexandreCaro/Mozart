fun {Fact N}
    if N==0 then 1
    else N*{Fact N-1} end
end

declare Fact in
    proc {Fact N ?R}
        local B Zero in
            Zero = 0
            B = (N == Zero)
            if B then
                R = 1
            else
                local R1 N1 One in
                    One = 1
                    N1 = N - One
                    {Fact N1 R1}
                    R = N * R1
                end
            end
        end
    end