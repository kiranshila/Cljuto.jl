module Pljuto
using HypertextLiteral

function cljs_bootstrap()
    println("Loading CLJS dependencies...")
    @htl("""
    <script src="https://cdn.jsdelivr.net/gh/borkdude/scittle@0.0.2/js/scittle.js" type="application/javascript"></script>
    <script crossorigin src="https://unpkg.com/react@17/umd/react.production.min.js"></script>
    <script crossorigin src="https://unpkg.com/react-dom@17/umd/react-dom.production.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/borkdude/scittle@0.0.2/js/scittle.reagent.js" type="application/javascript"></script>
    <script> scittle.core.disable_auto_eval(true);</script>""")
end

macro cljs_str(cljs::String)
    @htl("""<script>return scittle.core.eval_string($(cljs));</script>""")
end

export @cljs,@cljs_str,cljs_bootstrap
end
