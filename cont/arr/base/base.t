New(typeSize, step uint) [] {
    mem := <>
    mem  = mem + $^
 
    _SetLen(mem, 0)
    _SetCap(mem, 0)
    mem[-(_$uint * 3): _$uint] = typeSize 
    mem[-(_$uint * 4): _$uint] = step

    <- mem
}

Append(mem, v []) [] {
    len := _Len(mem)
    cap := _Cap(mem) 
    typeSize := _TypeSize(mem)
    ? len == cap {
        cap += _Step(mem)
        _SetCap(mem, cap)

        tmp   := mem - $^
        mem    = <> [cap * typeSize + $^]
        mem[:] = tmp[: len * typeSize + $^]
        mem    = mem + $^

        ~ [len * typeSize + $^] tmp
    }
 
    mem[len: typeSize] = v[:]
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

TypeSize(mem []) uint {
    <- mem[-(_$uint * 3): _$uint]
}

Step(mem []) uint {
    <- mem[-(_$uint *4): _$uint]
}

Free(mem []) {
    ~ [_Cap(mem) * _TypeSize() + $^] (mem - $^)
}