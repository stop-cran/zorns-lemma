all: Makefile.coq
	+make -f Makefile.coq all

clean: Makefile.coq
	+make -f Makefile.coq clean
	rm -f Makefile.coq
	rm -f Makefile.coq.conf

Makefile.coq: Make
	$(COQBIN)coq_makefile -f Make -o Makefile.coq

Make: ;

%: Makefile.coq
	+make -f Makefile.coq $@

.PHONY: all clean
