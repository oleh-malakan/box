T (
)

Exec(path []) (t * T, err) {
    t = @ T
    = t, 0
}

Next(t * T, b [], size uint) (n uint, err) {
    = size, 0
}

Free(t * T) {
    ~ t
}

eos() (err) {
    = 0xFF
}

EOS(err) (bool) {
    = err == _eos()    
}