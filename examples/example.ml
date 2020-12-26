(*
ocamlfind ocamlopt -package tsdl,tsdl_gfx -linkpkg -o example.native example.ml
*)
open Tsdl
open Tsdl_gfx

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
              assert (Sdl.set_render_draw_color rndr 0x00 0x00 0x00 0xFF = Ok ());
              assert (Sdl.render_clear rndr = Ok ());

              for i = 1 to 400 do
                begin
                  let r = Random.int 255 in
                  let g = Random.int 255 in
                  let b = Random.int 255 in
                  let a = 255 in

                  let x = Random.int 320 in
                  let y = Random.int 240 in

                  assert (Gfx.pixel_rgba rndr ~x ~y ~r ~g ~b ~a = Ok ());
                end;

                begin
                  let r = Random.int 255 in
                  let g = Random.int 255 in
                  let b = Random.int 255 in
                  let a = 255 in

                  let x1 = Random.int 320 in
                  let x2 = Random.int 320 in
                  let y = Random.int 240 in

                  assert (Gfx.hline_rgba rndr ~x1 ~x2 ~y ~r ~g ~b ~a = Ok ());
                end;

                begin
                  let r = Random.int 255 in
                  let g = Random.int 255 in
                  let b = Random.int 255 in
                  let a = 255 in

                  let x = Random.int 320 in
                  let y1 = Random.int 240 in
                  let y2 = Random.int 240 in

                  assert (Gfx.vline_rgba rndr ~x ~y1 ~y2 ~r ~g ~b ~a = Ok ());
                end;

                begin
                  let r = Random.int 255 in
                  let g = Random.int 255 in
                  let b = Random.int 255 in
                  let a = 255 in

                  let x1 = Random.int 320 in
                  let x2 = Random.int 320 in
                  let y1 = Random.int 240 in
                  let y2 = Random.int 240 in

                  assert (Gfx.rectangle_rgba rndr ~x1 ~y1 ~x2 ~y2 ~r ~g ~b ~a = Ok ());
                end;

                Sdl.render_present rndr;
              done;
              Sdl.delay 3000l;
              Sdl.destroy_window w;
              Sdl.quit ();
              exit 0
