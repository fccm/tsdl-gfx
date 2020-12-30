TSDL_GFX_PATH = ../_build/install/default/lib/tsdl_gfx

example.native: example.ml
	ocamlfind ocamlopt -linkpkg -package tsdl -I $(TSDL_GFX_PATH) tsdl_gfx.cmxa $< -o $@

clean:
	$(RM) *.o *.cm[ix] *.native
