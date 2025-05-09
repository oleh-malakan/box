_EOS = 0xFF

T (
)

Exec(path []) (t * T, err) {
    t = @ T
    = t, 0
}

Next(t * T, b [], size uint) (err) {
    = 0
}

Free(t * T) {
    ~ t
}