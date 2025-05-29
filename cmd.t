(
    EOS = 0xFF
)

T (
)

Exec(path []) (t * T, err) {
    t = @
    = t, 0
}

Next(t * T, b []) (n uint, err) {
    = 0, EOF
}

Free(t * T) {
    ~ t
}
