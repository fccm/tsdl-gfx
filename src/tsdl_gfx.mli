module Gfx : sig

(** SDL2_gfx bindings for use with Tsdl

    {{:https://www.ferzkopp.net/wordpress/2016/01/02/sdl_gfx-sdl2_gfx/}SDL2_gfx Homepage}

    {{:https://www.ferzkopp.net/Software/SDL2_gfx/Docs/html/_s_d_l2__gfx_primitives_8h.html}SDL2_gfx API}
*)

type 'a result = 'a Tsdl.Sdl.result

val pixel_rgba :
  Tsdl.Sdl.renderer -> x:int -> y:int -> r:int -> g:int -> b:int -> a:int -> unit result

val hline_rgba :
  Tsdl.Sdl.renderer ->
  x1:int -> x2:int -> y:int ->
  r:int -> g:int -> b:int -> a:int -> unit result

val vline_rgba :
  Tsdl.Sdl.renderer ->
  x:int -> y1:int -> y2:int ->
  r:int -> g:int -> b:int -> a:int -> unit result

val rectangle_rgba :
  Tsdl.Sdl.renderer ->
  x1:int -> y1:int -> x2:int -> y2:int ->
  r:int -> g:int -> b:int -> a:int -> unit result

end
