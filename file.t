(
    EOF = 0xFF
)

T (
)

Open(path []) (t * T, err) {
    t = @
    = t, 0
}

Read(t * T, b []) (n uint, err) {
    = 0, 0
}

Write(t * T, b []) (n uint, err) {
    = 0, 0
}

Free(t * T) {
    ~ t
}
