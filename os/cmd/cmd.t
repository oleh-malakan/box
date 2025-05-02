_EOS = 0xFF

T (
)

Exec(cmd [], size uint) (t * T, err) {
    t = <> * T
    = t, 0
}

Read(t * T, mem [], size uint) (n uint, err) {
    = size, 0
}

Free(t * T) {
    ~ <> t
}