_step uint = 128

New() [] * {
 m := <>
    m  = m + 
      
}

Append(arr [] *, v *) [] * {
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
