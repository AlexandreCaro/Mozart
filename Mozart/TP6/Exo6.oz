class Collection
    attr elements
    meth init
        elements:=nil
    end
    meth put(X)
        elements:=X|@elements
    end
    meth get($)
        case @elements of X|Xr then elements:=Xr X end
    end
    meth isEmpty($)
        @elements==nil
    end
    meth union(C)
        case @C
        of nil then @elements
        [] X|Xr then
            put(X)
            C:=Xr
            union(C)
        end
    end
end

class SortedCollection from Collection
    meth put(X)
        list:= nil
        case @elements
        of nil then @elements:=X|nil
        [] A|Xr then
            if A <= Xr then
                @list = A|@list
            else
                @elements = @list|X|Xr
            end
        end
    end
end


