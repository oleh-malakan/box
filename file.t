(
    EOF = 0xFF
)

T (
)

Open(path []) (t * T, err) {
    t = @
    = t, 0
}

Read(t * T, b []) (err) {
    = 0
}

Write(t * T, b []) (err) {
    = 0
}

Free(t * T) {
    ~ t
}
