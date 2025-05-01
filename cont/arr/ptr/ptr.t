<cont/arr/base>

New(step uint) [] * {
    <- base._New(step)     
}

Append(mem [] *, v *) [] * {      
    <- base._Append(mem, v, _$*)
}

Len(mem [] *) uint {
    <- base._Len(mem)
}

Cap(mem [] *) uint {
    <- base._Cap(mem)
}

Free(mem [] *) {
    base._Free(mem, _$*)
}
