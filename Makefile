.DELETE_ON_ERROR:

HACK = hack.pce

AS = wla-huc6280
LD = wlalink
LDFLAGS = -S
LINKFILE = linkfile

all: $(HACK)

%.pce: %.o
	printf "[objects]\n%s\n" "$<" > $(LINKFILE)
	$(LD) $(LDFLAGS) $(LINKFILE) $@

%.o: %.asm
	$(AS) -o $@ $<

.PHONY:
clean:
	rm -rf *.o $(HACK) $(LINKFILE) hack.sym
