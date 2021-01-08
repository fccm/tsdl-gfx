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


let try_rounded_rectangle rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x1 = Random.int 320 in
  let x2 = Random.int 320 in
  let y1 = Random.int 240 in
  let y2 = Random.int 240 in

  let rad = Random.int 20 in
  let w = x1 - x2 in
  let h = y1 - y2 in
  let w = if w < 0 then - w else w in
  let h = if h < 0 then - h else h in
  let rad = min rad w in
  let rad = min rad h in

  assert (Gfx.rounded_rectangle_rgba rndr ~x1 ~y1 ~x2 ~y2 ~rad ~r ~g ~b ~a = Ok ())


let try_box rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x1 = Random.int 320 in
  let x2 = Random.int 320 in
  let y1 = Random.int 240 in
  let y2 = Random.int 240 in

  assert (Gfx.box_rgba rndr ~x1 ~y1 ~x2 ~y2 ~r ~g ~b ~a = Ok ())


let try_rounded_box rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x1 = Random.int 320 in
  let x2 = Random.int 320 in
  let y1 = Random.int 240 in
  let y2 = Random.int 240 in

  let rad = Random.int 20 in
  let w = x1 - x2 in
  let h = y1 - y2 in
  let w = if w < 0 then - w else w in
  let h = if h < 0 then - h else h in
  let rad = min rad w in
  let rad = min rad h in

  assert (Gfx.rounded_box_rgba rndr ~x1 ~y1 ~x2 ~y2 ~rad ~r ~g ~b ~a = Ok ())


let try_line rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x1 = Random.int 320 in
  let x2 = Random.int 320 in
  let y1 = Random.int 240 in
  let y2 = Random.int 240 in

  assert (Gfx.line_rgba rndr ~x1 ~y1 ~x2 ~y2 ~r ~g ~b ~a = Ok ())


let try_aaline rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x1 = Random.int 320 in
  let x2 = Random.int 320 in
  let y1 = Random.int 240 in
  let y2 = Random.int 240 in

  assert (Gfx.aaline_rgba rndr ~x1 ~y1 ~x2 ~y2 ~r ~g ~b ~a = Ok ())


let try_thick_line rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x1 = Random.int 320 in
  let x2 = Random.int 320 in
  let y1 = Random.int 240 in
  let y2 = Random.int 240 in

  let width = 1 + Random.int 8 in

  assert (Gfx.thick_line_rgba rndr ~x1 ~y1 ~x2 ~y2 ~width ~r ~g ~b ~a = Ok ())


let try_circle rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x = Random.int 320 in
  let y = Random.int 240 in

  let rad = 3 + Random.int 30 in

  assert (Gfx.circle_rgba rndr ~x ~y ~rad ~r ~g ~b ~a = Ok ())


let try_aacircle rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x = Random.int 320 in
  let y = Random.int 240 in

  let rad = 3 + Random.int 30 in

  assert (Gfx.aacircle_rgba rndr ~x ~y ~rad ~r ~g ~b ~a = Ok ())


let try_filled_circle rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x = Random.int 320 in
  let y = Random.int 240 in

  let rad = 3 + Random.int 30 in

  assert (Gfx.filled_circle_rgba rndr ~x ~y ~rad ~r ~g ~b ~a = Ok ())


let try_ellipse rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x = Random.int 320 in
  let y = Random.int 240 in

  let rx = 4 + Random.int 40 in
  let ry = 4 + Random.int 40 in

  assert (Gfx.ellipse_rgba rndr ~x ~y ~rx ~ry ~r ~g ~b ~a = Ok ())


let try_aaellipse rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x = Random.int 320 in
  let y = Random.int 240 in

  let rx = 4 + Random.int 40 in
  let ry = 4 + Random.int 40 in

  assert (Gfx.aaellipse_rgba rndr ~x ~y ~rx ~ry ~r ~g ~b ~a = Ok ())


let try_filled_ellipse rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x = Random.int 320 in
  let y = Random.int 240 in

  let rx = 4 + Random.int 40 in
  let ry = 4 + Random.int 40 in

  assert (Gfx.filled_ellipse_rgba rndr ~x ~y ~rx ~ry ~r ~g ~b ~a = Ok ())


let try_arc rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x = Random.int 320 in
  let y = Random.int 240 in

  let rad = 4 + Random.int 60 in

  let start = Random.int 180 in
  let end_ = 10 + Random.int 350 in

  assert (Gfx.arc_rgba rndr ~x ~y ~rad ~start ~end_ ~r ~g ~b ~a = Ok ())


let try_pie rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x = Random.int 320 in
  let y = Random.int 240 in

  let rad = 4 + Random.int 60 in

  let start = Random.int 180 in
  let end_ = 10 + Random.int 350 in

  assert (Gfx.pie_rgba rndr ~x ~y ~rad ~start ~end_ ~r ~g ~b ~a = Ok ())


let try_filled_pie rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x = Random.int 320 in
  let y = Random.int 240 in

  let rad = 4 + Random.int 60 in

  let start = Random.int 180 in
  let end_ = 10 + Random.int 350 in

  assert (Gfx.filled_pie_rgba rndr ~x ~y ~rad ~start ~end_ ~r ~g ~b ~a = Ok ())


let try_trigon rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x1 = Random.int 320 in
  let y1 = Random.int 240 in
  let x2 = Random.int 320 in
  let y2 = Random.int 240 in
  let x3 = Random.int 320 in
  let y3 = Random.int 240 in

  assert (Gfx.trigon_rgba rndr ~x1 ~y1 ~x2 ~y2 ~x3 ~y3 ~r ~g ~b ~a = Ok ())


let try_aatrigon rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x1 = Random.int 320 in
  let y1 = Random.int 240 in
  let x2 = Random.int 320 in
  let y2 = Random.int 240 in
  let x3 = Random.int 320 in
  let y3 = Random.int 240 in

  assert (Gfx.aatrigon_rgba rndr ~x1 ~y1 ~x2 ~y2 ~x3 ~y3 ~r ~g ~b ~a = Ok ())


let try_filled_trigon rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x1 = Random.int 320 in
  let y1 = Random.int 240 in
  let x2 = Random.int 320 in
  let y2 = Random.int 240 in
  let x3 = Random.int 320 in
  let y3 = Random.int 240 in

  assert (Gfx.filled_trigon_rgba rndr ~x1 ~y1 ~x2 ~y2 ~x3 ~y3 ~r ~g ~b ~a = Ok ())


let try_polygon rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in
  let ps =
    let n = 4 + Random.int 12 in
    List.init n (fun i ->
      let x = Random.int 320 in
      let y = Random.int 240 in
      (x, y)
    )
  in
  assert (Gfx.polygon_rgba rndr ~ps ~r ~g ~b ~a = Ok ())


let try_aapolygon rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in
  let ps =
    let n = 4 + Random.int 12 in
    List.init n (fun i ->
      let x = Random.int 320 in
      let y = Random.int 240 in
      (x, y)
    )
  in
  assert (Gfx.aapolygon_rgba rndr ~ps ~r ~g ~b ~a = Ok ())


let try_filled_polygon rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in
  let ps =
    let n = 4 + Random.int 12 in
    List.init n (fun i ->
      let x = Random.int 320 in
      let y = Random.int 240 in
      (x, y)
    )
  in
  assert (Gfx.filled_polygon_rgba rndr ~ps ~r ~g ~b ~a = Ok ())


let try_bezier rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in
  let s = 3 + Random.int 6 in
  let ps =
    let n = 4 + Random.int 12 in
    List.init n (fun i ->
      let x = Random.int 320 in
      let y = Random.int 240 in
      (x, y)
    )
  in
  assert (Gfx.bezier_rgba rndr ~ps ~s ~r ~g ~b ~a = Ok ())


let try_character rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x = Random.int 320 in
  let y = Random.int 240 in

  let c = char_of_int ((int_of_char 'a') + Random.int 26) in

  assert (Gfx.character_rgba rndr ~x ~y ~c ~r ~g ~b ~a = Ok ())


let try_string rndr =
  let r = Random.int 255 in
  let g = Random.int 255 in
  let b = Random.int 255 in
  let a = 255 in

  let x = Random.int 320 in
  let y = Random.int 240 in

  let c () = char_of_int ((int_of_char 'a') + Random.int 26) in
  let s = String.init (2 + Random.int 10) (fun i -> c ()) in

  assert (Gfx.string_rgba rndr ~x ~y ~s ~r ~g ~b ~a = Ok ())



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
              iter  20 rndr 2000l try_rounded_rectangle;
              iter  10 rndr 2000l try_box;
              iter  10 rndr 2000l try_rounded_box;

              iter  60 rndr 2000l try_line;
              iter  60 rndr 2000l try_aaline;
              iter  40 rndr 2000l try_thick_line;

              iter  60 rndr 2000l try_circle;
              iter  60 rndr 2000l try_aacircle;
              iter  40 rndr 2000l try_filled_circle;

              iter  60 rndr 2000l try_ellipse;
              iter  60 rndr 2000l try_aaellipse;
              iter  40 rndr 2000l try_filled_ellipse;

              iter  60 rndr 2000l try_arc;
              iter  60 rndr 2000l try_pie;
              iter  40 rndr 2000l try_filled_pie;

              iter  40 rndr 2000l try_trigon;
              iter  40 rndr 2000l try_aatrigon;
              iter  20 rndr 2000l try_filled_trigon;

              iter   8 rndr 2000l try_polygon;
              iter   8 rndr 2000l try_aapolygon;
              iter   8 rndr 2000l try_filled_polygon;

              iter  14 rndr 2000l try_bezier;

              Gfx.set_font_rotation ~rot:0;
              iter  40 rndr 2000l try_character;
              iter  20 rndr 2000l try_string;

              Sdl.delay 1000l;
              Sdl.destroy_window w;
              Sdl.quit ();
              exit 0
