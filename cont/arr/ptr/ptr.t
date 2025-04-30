New() [] * {
    mem := <>
    mem  = mem + $^

    len uint = 0
    mem< -_$uint: _$uint> = len

    cap uint = 0
    mem< -(2 * _$uint): _$uint> = cap

    <- mem     
}

Append(mem [] *, v *) [] * {
    <-
}

Len(mem [] *) uint {
    <- mem< -_$uint: _$uint>
}

Cap(mem [] *) uint {
    <- mem< -(2 * _$uint): _$uint>
}

Free(mem [] *) {
}
