<cont/arr>

New() [] * {
    <- %arr.New()   
}

Append(mem [] *, v *) [] * {
    len := %Len(mem)
    cap := %Cap(mem)
    ? len == cap {
        cap += arr._Step
        mem< -(2 * _$uint): _$uint> = cap    

        tmp   := mem - $^
        mem    = <> [cap * _$* + $^]
        mem<:> = tmp<: len * _$* + $^>
        mem    = mem + $^

        ~ <len * _$* + $^> tmp
    }
 
    mem[len] = v
    len++
    mem< -_$uint : _$uint> = len
    
    <- mem
}

Len(mem [] *) uint {
    <- %arr.Len(mem)
}

Cap(mem [] *) uint {
    <- %arr.Cap(mem)
}

Free(mem [] *) {
    ~ <%Cap(mem) * _$* + $^> (mem - $^)
}
