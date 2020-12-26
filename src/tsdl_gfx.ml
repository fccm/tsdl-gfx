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

end
