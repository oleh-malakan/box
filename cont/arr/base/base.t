New(typeSize, step uint) [] {
    mem := <>
    mem  = mem + $^
 
    _setLen(mem, 0)
    _setCap(mem, 0)
    mem[-(_$uint * 3): _$uint] = typeSize 
    mem[-(_$uint * 4): _$uint] = step

    <- mem
}

Append(mem, v []) [] {
    len := _Len(mem)
    cap := _Cap(mem) 
    typeSize uint = _typeSize(mem)
    ? len == cap {
        cap += _step(mem)
        _setCap(mem, cap)

        tmp   := mem - $^
        mem    = <> [cap * typeSize + $^]
        mem[:] = tmp[: len * typeSize + $^]
        mem    = mem + $^

        ~ [len * typeSize + $^] tmp
    }
 
    mem[len: typeSize] = v[:]
    len++
    _setLen(len)
    
    <- mem
}

Len(mem []) uint {
    <- mem[-_$uint: _$uint]
}
 
Cap(mem []) uint {
    <- mem[-(_$uint * 2): _$uint]
}

Free(mem []) {
    ~ [_Cap(mem) * _typeSize() + $^] (mem - $^)
}

setLen(mem [], v uint) {
    mem[-_$uint: _$uint] = v
}
 
setCap(mem [], v uint) {
    mem[-(_$uint * 2): _$uint] = v
}

typeSize(mem []) uint {
    <- mem[-(_$uint * 3): _$uint]
}

step(mem []) uint {
    mem[-(_$uint * 4): _$uint]
}
