_EOF = 0xFF

T (
)

Open(path [] char) (t * T, err) {
    t = * T
    = t, 0
}

Read(t * T, b []) err {
    = 0
}

Write(t * T, b[]) err {
    = 0
}

ReadAt(t * T, b [], offset, size uint) err {
    = 0
}

WriteAt(t * T, b [], offset uint) err {
    = 0
}

Free(t * T) {
    ~ t
}