.PHONY: all run clean

all: everyline oneline normal

run: all
	./everyline
	./oneline
	./normal

everyline: everyline.c
	gcc -o everyline everyline.c -nostdlib -static

oneline: oneline.c
	gcc -o oneline oneline.c -nostdlib -static

normal: normal.c
	gcc -o normal normal.c -nostdlib -static

clean:
	rm -f everyline oneline normal
