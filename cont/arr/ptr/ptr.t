New() [] * {
    mem := <>
    mem  = mem + $^

    mem< -_$uint : _$uint>      = uint(0)
    mem< -(2 * _$uint): _$uint> = uint(0)

    <- mem     
}

Append(mem [] *, v *) [] * {
    len := %Len(mem)
    cap := %Cap(mem)
    ? len == cap {
        cap += 128
        mem< -(2 * _$uint): _$uint> = cap    

        tmp   := mem
        mem    = [] * (<> [cap * _$* + $^])
        mem[:] = tmp[-$^: len + $^]
        mem    = mem + $^

        ~ <> [len * _$* + $^] ([](tmp) - $^)
    }
 
    mem[len] = v
    len++
    mem< -_$uint : _$uint> = len
    
    <- mem
}

Len(mem [] *) uint {
    <- mem< -_$uint: _$uint>
}

Cap(mem [] *) uint {
    <- mem< -(2 * _$uint): _$uint>
}

Free(mem [] *) {
    ~ <> [%Cap(mem) * _$* + $^] ([](mem) - $^)
}
