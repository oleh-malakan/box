_EOF = 0xFF

T (
)

Open(path []) (t * T, err) {
    t = * T
    = t, 0
}

Read(t * T, b [], offset uint) (n uint, err) {
    = size, 0
}

Write(t * T, b [], offset uint) err {
    = 0
}

Free(t * T) {
    ~ t
}