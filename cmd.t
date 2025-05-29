(
    EOS = 0xFF
)

T (
)

Run(path []) (t * T, err) {
    t = @
    = t, 0
}

Next(t * T, b []) (err) {
    = 0
}

Free(t * T) {
    ~ t
}
