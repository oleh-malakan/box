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

ReadAt(t * T, b [], offset uint) (n uint, err) {
    = 0, 0
}

WriteAt(t * T, b [], offset uint) (n uint, err) {
    = 0, 0
}

Free(t * T) {
    ~ t
}
