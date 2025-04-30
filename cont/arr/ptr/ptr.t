_step uint = 128

New() [] * {
    mem := <$^>
    mem  = mem + $^

    len uint = 0
    mem< -_$uint: _$uint> = len<:>

    cap uint = 0
    mem< -(2 * _$uint): _$uint> = cap<:>

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
