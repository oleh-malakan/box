<cont/arr/base>

_step = 128

New() [] * {
    <- base._New()     
}

Append(mem [] *, v *) [] * {      
    <- base._Append(mem, v, _$*, _step)
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