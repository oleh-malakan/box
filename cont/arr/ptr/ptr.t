_step uint = 128

New() [] * {
    mem := <$^>
    mem  = mem + $^
    uint(mem< -     _$uint >) = 0
    uint(mem< -(2 * _$uint)>) = 0
    <- mem     
}

Append(mem [] *, v *) [] * {
    <-
}

Len(mem [] *) uint {
    <- uint(mem< -_$uint>)
}

Cap(mem [] *) uint {
    <- uint(mem< -(2 * _$uint)>)
}

Free(mem [] *) {
}
