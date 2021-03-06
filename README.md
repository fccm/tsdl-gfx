# Tsdl\_gfx — SDL2\_gfx bindings for OCaml with Tsdl

Tsdl\_gfx provides bindings to
[SDL2\_gfx](https://www.ferzkopp.net/wordpress/2016/01/02/sdl_gfx-sdl2_gfx/)
intended to be used with [Tsdl](https://github.com/dbuenzli/tsdl).


## Siblings

It has as siblings
[tsdl-mixer](https://github.com/tokenrove/tsdl-mixer),
[tsdl-ttf](https://github.com/tokenrove/tsdl-ttf) and
[tsdl-image](https://github.com/tokenrove/tsdl-image).


## Note

Note that these bindings are at an early stage and have only been used
minimally.  The interface may change.  
Comments and bug reports are welcome through the
[github page](https://github.com/fccm/tsdl-gfx)
or by emailing Florent Monnier
<[monnier.florent@gmail.com](mailto:monnier.florent@gmail.com)>.


## Compile

You can compile with [dune](https://dune.readthedocs.io/en/stable/):

    dune build


## Installation

You can install these local sources via [opam](https://opam.ocaml.org/) with:

    opam install .


## Documentation

Documentation can be generated with `make doc`, but the bindings
follow the SDL2\_gfx interface closely, so it may be sufficient to
consult [its documentation](
https://www.ferzkopp.net/Software/SDL2_gfx/Docs/html/_s_d_l2__gfx_primitives_8h.html).

For the reference of the module signature you can read the .mli file
or read the [html api doc](
https://fccm.github.io/tsdl-gfx/tsdl_gfx/Tsdl_gfx/Gfx/).

