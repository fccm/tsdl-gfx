all:
	dune build
	@echo

doc:
	dune build @doc
	@echo

install:
	opam install .

clean:
	$(RM) -r _build
	$(RM) dune-project
	$(RM) src/.merlin
	$(MAKE) -C examples clean
