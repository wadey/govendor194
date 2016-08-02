To reproduce https://github.com/kardianos/govendor/issues/194 :

**NOTE**: the vendor folder is created inside of the `bravo` package.

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

    $ govendor remove -n +local
    Remove ".../src/github.com/wadey/govendor194/bravo/vendor/github.com/wadey/govendor194/bravo/charlie/"

Notice that `github.com/wadey/govendor194/bravo/charlie` has been copied into
the `vendor` folder inside of `bravo`. It is also listed twice in
`govendor list`.
