New() [] * {
    mem := <>
    mem  = mem + $^

    mem< -_$uint : _$uint>      = uint(0)
    mem< -(2 * _$uint): _$uint> = uint(0)

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
    mem = mem - $^
    ~ [$^ + (%Cap(mem) * _$*)] mem *
}
