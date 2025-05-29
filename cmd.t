T (
)

R (
)

Start(path []) (t * T, err) {
    t = @
    = t, 0
}

Stream(path []) (t * T,  r * R, err) {
    = nil, nil, 0
)

Read(r * R, b []) (n uint, err) {
    = 0, 0
}

Wait(t * T) {
}

Kill(t * T) {
}

Free(t * T) {
    ~ t
}
