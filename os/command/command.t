_EOS = 0xFF

T (
)

Exec(cmd [], size uint) (t * T, err) {
    t = <> * T
    return t, 0
}

Read(t * T, mem [], size uint) (n uint, err) {
    return size, 0
}

Free(t * T) {
    ~ <> t
}