_EOF = 0xFF

T (
)

Open(path [], size uint) (t * T, err) {
    t = <> * T
    return t, 0
}

Read(t * T, mem [], offset, size uint) (n uint, err) {
    return size, 0
}

Write(t * T, mem [], offset, size uint) err {
    <- 0
}

Free(t * T) {
    ~ <> t
}