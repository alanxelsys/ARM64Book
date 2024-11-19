TARGETFILE = $(targetfile)
origin: $(TARGETFILE).o
	ld -o $(TARGETFILE) $(TARGETFILE).o
$(TARGETFILE).o: $(TARGETFILE).s
	as -g -o $(TARGETFILE).o $(TARGETFILE).s
