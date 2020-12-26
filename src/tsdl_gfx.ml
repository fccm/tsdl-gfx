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


let line_rgba =
  foreign "lineRGBA" (
    renderer @-> int @-> int @-> int @-> int @-> int @-> int @-> int @-> int @->
      returning zero_to_ok)

let line_rgba rnd ~x1 ~y1 ~x2 ~y2 ~r ~g ~b ~a =
  line_rgba rnd x1 y1 x2 y2 r g b a

let aaline_rgba =
  foreign "aalineRGBA" (
    renderer @-> int @-> int @-> int @-> int @-> int @-> int @-> int @-> int @->
      returning zero_to_ok)

let aaline_rgba rnd ~x1 ~y1 ~x2 ~y2 ~r ~g ~b ~a =
  aaline_rgba rnd x1 y1 x2 y2 r g b a


let thick_line_rgba =
  foreign "thickLineRGBA" (
    renderer @-> int @-> int @-> int @-> int @-> int @-> int @-> int @-> int @-> int @->
      returning zero_to_ok)

let thick_line_rgba rnd ~x1 ~y1 ~x2 ~y2 ~width ~r ~g ~b ~a =
  thick_line_rgba rnd x1 y1 x2 y2 width r g b a


let rounded_rectangle_rgba =
  foreign "roundedRectangleRGBA" (
    renderer @-> int @-> int @-> int @-> int @-> int @-> int @-> int @-> int @-> int @->
      returning zero_to_ok)

let rounded_rectangle_rgba rnd ~x1 ~y1 ~x2 ~y2 ~rad ~r ~g ~b ~a =
  rounded_rectangle_rgba rnd x1 y1 x2 y2 rad r g b a


let box_rgba =
  foreign "boxRGBA" (
    renderer @-> int @-> int @-> int @-> int @-> int @-> int @-> int @-> int @->
      returning zero_to_ok)

let box_rgba rnd ~x1 ~y1 ~x2 ~y2 ~r ~g ~b ~a =
  box_rgba rnd x1 y1 x2 y2 r g b a


let rounded_box_rgba =
  foreign "roundedBoxRGBA" (
    renderer @-> int @-> int @-> int @-> int @-> int @-> int @-> int @-> int @-> int @->
      returning zero_to_ok)

let rounded_box_rgba rnd ~x1 ~y1 ~x2 ~y2 ~rad ~r ~g ~b ~a =
  rounded_box_rgba rnd x1 y1 x2 y2 rad r g b a



let circle_rgba =
  foreign "circleRGBA" (
    renderer @-> int @-> int @-> int @-> int @-> int @-> int @-> int @->
      returning zero_to_ok)

let circle_rgba rnd ~x ~y ~rad ~r ~g ~b ~a =
  circle_rgba rnd x y rad r g b a


let aacircle_rgba =
  foreign "aacircleRGBA" (
    renderer @-> int @-> int @-> int @-> int @-> int @-> int @-> int @->
      returning zero_to_ok)

let aacircle_rgba rnd ~x ~y ~rad ~r ~g ~b ~a =
  aacircle_rgba rnd x y rad r g b a


let filled_circle_rgba =
  foreign "filledCircleRGBA" (
    renderer @-> int @-> int @-> int @-> int @-> int @-> int @-> int @->
      returning zero_to_ok)

let filled_circle_rgba rnd ~x ~y ~rad ~r ~g ~b ~a =
  filled_circle_rgba rnd x y rad r g b a

end
