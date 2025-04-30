New() [] {
    mem := <$^>
    mem  = mem + $^
    uint(mem[-      $uint ]) = 0
    uint(mem[- (2 * $uint)]) = 0
    <- mem     
}

Append(mem [], v) [] {
    <-
}

Len(mem []) uint {
    <- uint(m[- $uint])
}

Cap(mem []) uint {
    <- uint(m[- (2 * $uint)])
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