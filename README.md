# Pljuto

Run [ClojureScript](https://clojurescript.org/) inside [Pluto
notebooks](https://github.com/fonsp/Pluto.jl) using
[scittle](https://github.com/borkdude/scittle).

![unknown](https://user-images.githubusercontent.com/6305359/134080886-89e7cb8d-0cdb-4706-be36-01f59781f3d8.png)

## How to use

Simply use the `cljs` string macro, such as

```julia
cljs"""(.log js/console "Hello World")"""
```

The outputs from SCI are returned from the enclosing `<script>` tag, so the
value of the clojure body is returned.

It might make more sense to add a function specifically for UI components that
creates the div and deals with rendering (PRs welcome!).
