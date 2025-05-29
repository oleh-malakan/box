(
    EOS = 0xFF
)

T (
)

Exec(path []) (t * T, err) {
    t = @
    = t, 0
}

Read(t * T, b []) (err) {
    = 0
}

Free(t * T) {
    ~ t
}
