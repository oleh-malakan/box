New() [] {
    mem := <>
    mem  = mem + $^
 
    _SetLen(mem, 0)
    _SetCap(mem, 0)
 
    <- mem
}

Append(mem, v [], sizeType, step uint) [] {
    len := _Len(mem)
    cap := _Cap(mem)
    ? len == cap {
        cap += step
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
    mem[-(_$uint + _$uint): _$uint] = v
}

Cap(mem []) uint {
    <- mem[-(_$uint + _$uint): _$uint]
}

Free(mem [], sizeType uint) {
    ~ [_Cap(mem) * sizeType + $^] (mem - $^)
}
