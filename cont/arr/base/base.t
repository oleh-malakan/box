New(step uint) [] {
    mem := <>
    mem  = mem + $^
 
    _SetLen(mem, 0)
    _SetCap(mem, 0)
    mem[-(_$uint * 3): _$uint] = step

    <- mem
}

Append(mem, v [], sizeType) [] {
    len := _Len(mem)
    cap := _Cap(mem) 
    ? len == cap {
        cap += uint(mem[-(_$uint * 3): _$uint])
        _SetCap(mem, cap)

        tmp   := mem - $^
        mem    = <> [cap * sizeType + $^]
        mem[:] = tmp[: len * sizeType + $^]
        mem    = mem + $^

        ~ [len * sizeType + $^] tmp
    }
 
    mem[len: sizeType] = v[:]
    len++
    _SetLen(len)
    
    <- mem
}

SetLen(mem [], v uint) {
    mem[-_$uint: _$uint] = v
}

Len(mem []) uint {
    <- mem[-_$uint: _$uint]
}
 
SetCap(mem [], v uint) {
    mem[-(_$uint * 2): _$uint] = v
}

Cap(mem []) uint {
    <- mem[-(_$uint * 2): _$uint]
}

Free(mem [], sizeType uint) {
    ~ [_Cap(mem) * sizeType + $^] (mem - $^)
}
