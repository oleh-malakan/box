New(typeSize, step uint) [] {
    mem := [step * typeSize + $^]
    mem += $^

    _setLen(mem, 0)
    _setCap(mem, step)
    mem[-(3 * _$uint): _$uint] = typeSize
    mem[-(4 * _$uint): _$uint] = step

    = mem
}

Append(mem, v []) [] {
    ? _Len(mem) == _Cap(mem) {
        _setCap(mem, _Cap(mem) + _step(mem))

        tmp := mem
        mem  = [_Cap(tmp) * _typeSize(tmp) + $^]
        mem  = tmp[-$^: _Len(tmp) * _typeSize(tmp) + $^]
        mem += $^
        ~ [-$^: _Len(tmp) * _typeSize(tmp) + $^] tmp
    }

    mem[_Len(mem) * _typeSize(mem): _typeSize(mem)] = v
    _setLen(mem, _Len(mem) + 1)

    = mem
}

Len(mem []) uint {
    = mem[-_$uint: _$uint]
}

Cap(mem []) uint {
    = mem[-(2 * _$uint): _$uint]
}

Free(mem []) {
    ~ [-$^: _Cap(mem) * _typeSize(mem) + $^] mem
}

setLen(mem [], v uint) {
    mem[-_$uint: _$uint] = v
}

setCap(mem [], v uint) {
    mem[-(2 * _$uint): _$uint] = v
}

typeSize(mem []) uint {
    = mem[-(3 * _$uint): _$uint]
}

step(mem []) uint {
    = mem[-(4 * _$uint): _$uint]
}