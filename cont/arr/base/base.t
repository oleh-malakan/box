New(typeSize, step uint) [] {
    mem := <>

    mem += $^
 
    _SetLen(mem, 0)
    _SetCap(mem, 0)
    mem[-(_$uint * 3): _$uint] = typeSize 
    mem[-(_$uint * 4): _$uint] = step

    <- mem
}

Append(mem, v []) [] {
    ? _Len(mem) == _Cap(mem) {
        _SetCap(mem, _Cap(mem) + _Step(mem))

        tmp := mem

        mem = <> [_Cap(tmp) * _TypeSize(tmp) + $^]
        mem = tmp[-$^: _Len(tmp) * _TypeSize(tmp) + $^]

        mem += $^

        ~ <> [-$^: _Len(mem) * _TypeSize(mem) + $^] tmp
    }
 
    mem[_Len(mem): _TypeSize(mem)] = v
    _SetLen(_Len(mem) + 1)
    
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
    ~ <> [-$^: _Cap(mem) * _TypeSize(mem) + $^] mem
}