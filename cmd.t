(
    EOS = 0xFF
)

T (
)

Run(path []) (t * T, err) {
    t = @
    = t, 0
}

Read(t * T, b []) (n uint, err) {
    = 0, 0
}

Free(t * T) {
    ~ t
}
