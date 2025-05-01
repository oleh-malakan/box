<cont/arr/base>

New(step uint) [] * {
    <- base._New(_$*, step)     
}

Append(mem [] *, v *) [] * {      
    <- base._Append(mem, v)
}

Len(mem [] *) uint {
    <- base._Len(mem)
}

Cap(mem [] *) uint {
    <- base._Cap(mem)
}

Free(mem [] *) {
    base._Free(mem)
}
