_EOS = 0xFF

T (
)

Exec(cmd []) (t * T, err) {
    t = * T
    = t, 0
}

Read(t * T, b [], size uint) (n uint, err) {
    = size, 0
}

Free(t * T) {
    ~ t
}