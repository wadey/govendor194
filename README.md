To reproduce https://github.com/kardianos/govendor/issues/194 :

    $ cd bravo

    $ govendor init

    $ govendor fetch -v +outside
    Get latest revision "github.com/wadey/govendor194/alpha"
    Get latest revision "github.com/wadey/govendor194/bravo/charlie"

    $ govendor list
     v  github.com/wadey/govendor194/alpha
     v  github.com/wadey/govendor194/bravo/charlie
     l  github.com/wadey/govendor194/bravo
     l  github.com/wadey/govendor194/bravo/charlie

Notice that `github.com/wadey/govendor194/bravo/charlie` has been copied into
the `vendor` folder inside of `bravo`. It is also listed twice in
`govendor list`.
