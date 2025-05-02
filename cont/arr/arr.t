New(typeSize, step uint) [] {
    mem := <>
    mem += $^
 
    _SetLen(mem, 0)
    _SetCap(mem, 0)
    mem[-(3 * _$uint): _$uint] = typeSize 
    mem[-(4 * _$uint): _$uint] = step

    <- mem
}

Append(mem, v []) [] {
    ? _Len(mem) == _Cap(mem) {
        _SetCap(mem, _Cap(mem) + _Step(mem))

        tmp := mem
        mem  = <> [_Cap(tmp) * _TypeSize(tmp) + $^]
        mem  = tmp[-$^: _Len(tmp) * _TypeSize(tmp) + $^]
        mem += $^
        ~ <> [-$^: _Len(tmp) * _TypeSize(tmp) + $^] tmp
    }
 
    mem[_Len(mem) * _TypeSize(mem): _TypeSize(mem)] = v
    _SetLen(mem, _Len(mem) + 1)
    
    <- mem
}

SetLen(mem [], v uint) {
    mem[-_$uint: _$uint] = v
}

SetCap(mem [], v uint) {
    mem[-(2 * _$uint): _$uint] = v
}

Len(mem []) uint {
    <- mem[-_$uint: _$uint]
}

Cap(mem []) uint {
    <- mem[-(2 * _$uint): _$uint]
}

TypeSize(mem []) uint {
    <- mem[-(3 * _$uint): _$uint]
}

Step(mem []) uint {
    <- mem[-(4 * _$uint): _$uint]
}

Free(mem []) {
    ~ <> [-$^: _Cap(mem) * _TypeSize(mem) + $^] mem
}