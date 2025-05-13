Get() (args [] []) {
    args = []


    =
}

Free(args [] []) {
    (
        i uint
        l uint
    )
    i = 0
    l = _$(args)
    & i < l {
        ~ args[i]
        i++
    }
    ~ args
}