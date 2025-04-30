_step uint = 128

New() ([] *) {
    m := <^>
    m  = m + ^
    uint(m[-      $uint ]) = 0
    uint(m[- (2 * $uint)]) = 0
    <- m
}

Append(arr [] *, v *) ([] *) {
    <-
}

Len(arr [] *) uint {
    <- uint(m[- $uint])
}

Cap(arr [] *) uint {
    <- uint(m[- (2 * $uint)])
}

Free(arr [] *) {
}
