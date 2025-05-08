_EOS = 0xF

T (
)

Exec(path []) (t * T, err) {
    t = @ T
    = t, 0
}

Read(t * T, b []) (n uint, err) {
    = _$(b), 0
}

Free(t * T) {
    ~ t
}