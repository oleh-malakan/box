New() [] {
    mem := <$^>
    mem  = mem + $^

    len uint = 0
    mem< -_$uint: _$uint> = len

    cap uint = 0
    mem< -(2 * _$uint): _$uint> = cap

    <- mem     
}

Len(mem []) uint {
    <- mem< -_$uint: _$uint>
}

Cap(mem []) uint {
    <- mem< -(2 * _$uint): _$uint>
}

Append(mem [], v) [] {
    <-
}

Free(mem []) {
}



_New() (t * T) {
    t = <> * T

    t.Mem = nil
    t.Len = 0
    t.cap = 0

    <- t, 0
}

_Add(t * T, v *) {    
    ? t.Len == t.cap {
        tmp     := t.Mem
        t.cap   += _step
        t.Mem    = <> [t.cap] *
        t.Mem[:] = tmp[:t.Len]
        ~ <> [t.Len] tmp
    }
 
    t.Mem[t.Len] = v
    t.Len++
}

_Free(t * T) {
    ~ <> [t.cap] t.Mem
    ~ <> t
}