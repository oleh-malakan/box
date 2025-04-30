_step uint = 128

New() [] * {
    mem := <$^>
    mem  = mem + $^
    uint(mem< -     $uint >) = 0
    uint(mem< -(2 * $uint)>) = 0
    <- mem     
}

Append(mem [] *, v *) [] * {
    <-
}

Len(mem [] *) uint {
    <- uint(mem< -$uint>)
}

Cap(mem [] *) uint {
    <- uint(mem< -(2 * $uint)>)
}

Free(mem [] *) {
}
