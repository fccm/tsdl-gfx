(*
ocamlfind ocamlopt -package tsdl,tsdl_gfx -linkpkg -o example.native example.ml
*)
open Tsdl
open Tsdl_gfx


let try_pixel rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x = Random.int 320 in
  let y = Random.int 240 in

  assert (Gfx.pixel_rgba rndr ~x ~y ~r ~g ~b ~a = Ok ())


let try_hline rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x1 = Random.int 320 in
  let x2 = Random.int 320 in
  let y = Random.int 240 in

  assert (Gfx.hline_rgba rndr ~x1 ~x2 ~y ~r ~g ~b ~a = Ok ())


let try_vline rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x = Random.int 320 in
  let y1 = Random.int 240 in
  let y2 = Random.int 240 in

  assert (Gfx.vline_rgba rndr ~x ~y1 ~y2 ~r ~g ~b ~a = Ok ())


let try_rectangle rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x1 = Random.int 320 in
  let x2 = Random.int 320 in
  let y1 = Random.int 240 in
  let y2 = Random.int 240 in

  assert (Gfx.rectangle_rgba rndr ~x1 ~y1 ~x2 ~y2 ~r ~g ~b ~a = Ok ())


let iter n rndr msec f =
  assert (Sdl.set_render_draw_color rndr 0x00 0x00 0x00 0xFF = Ok ());
  assert (Sdl.render_clear rndr = Ok ());
  for i = 1 to n do f rndr done;
  Sdl.render_present rndr;
  Sdl.delay msec;
;;


let () =
  Random.self_init ();
  match Sdl.init Sdl.Init.video with
  | Error (`Msg e) -> Sdl.log "Init error: %s" e; exit 1
  | Ok () ->
      match Sdl.create_window ~w:320 ~h:240 "SDL2_Gfx" Sdl.Window.windowed with
      | Error (`Msg e) -> Sdl.log "Create window error: %s" e; exit 1
      | Ok w ->
          match Sdl.create_renderer w with
          | Error (`Msg e) -> Sdl.log "Could not create renderer: %s" e; exit 1
          | Ok rndr ->
              iter 900 rndr 2000l try_pixel;
              iter  90 rndr 2000l try_hline;
              iter  90 rndr 2000l try_vline;
              iter  20 rndr 2000l try_rectangle;

              Sdl.delay 1000l;
              Sdl.destroy_window w;
              Sdl.quit ();
              exit 0
