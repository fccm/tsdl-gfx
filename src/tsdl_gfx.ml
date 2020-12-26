open Ctypes
open Foreign
open Tsdl
open Result

module Gfx = struct

type 'a result = 'a Sdl.result

let error () = Error (`Msg (Sdl.get_error ()))

let zero_to_ok =
  let read = function 0 -> Ok () | _ -> error () in
  view ~read ~write:(fun _ -> assert false) int

let renderer =
  view
    ~read:Sdl.unsafe_renderer_of_ptr
    ~write:Sdl.unsafe_ptr_of_renderer
    nativeint

let pixel_rgba =
  foreign "pixelRGBA" (
    renderer @-> int @-> int @-> int @-> int @-> int @-> int @->
      returning zero_to_ok)

let pixel_rgba rnd ~x ~y ~r ~g ~b ~a =
  pixel_rgba rnd x y r g b a

let hline_rgba =
  foreign "hlineRGBA" (
    renderer @-> int @-> int @-> int @-> int @-> int @-> int @-> int @->
      returning zero_to_ok)

let vline_rgba =
  foreign "vlineRGBA" (
    renderer @-> int @-> int @-> int @-> int @-> int @-> int @-> int @->
      returning zero_to_ok)

let rectangle_rgba =
  foreign "rectangleRGBA" (
    renderer @-> int @-> int @-> int @-> int @-> int @-> int @-> int @-> int @->
      returning zero_to_ok)


let hline_rgba rnd ~x1 ~x2 ~y ~r ~g ~b ~a =
  hline_rgba rnd x1 x2 y r g b a

let vline_rgba rnd ~x ~y1 ~y2 ~r ~g ~b ~a =
  vline_rgba rnd x y1 y2 r g b a

let rectangle_rgba rnd ~x1 ~y1 ~x2 ~y2 ~r ~g ~b ~a =
  rectangle_rgba rnd x1 y1 x2 y2 r g b a

end
