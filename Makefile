.PHONY: all run clean

CC ?= cc
CFLAGS = -nostdlib -static
LDFLAGS = -Wl,-s,-N,--no-warn-rwx-segments

all: everyline oneline normal

run: all
	./everyline
	./oneline
	./normal

everyline: everyline.c
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)

oneline: oneline.c
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)

normal: normal.c
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)

clean:
	rm -f everyline oneline normal
