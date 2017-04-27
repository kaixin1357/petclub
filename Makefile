all: petclub

clean: 
	rm -rf petclub *.o *~
.PHONY: clean

petclub: petclub.o tree.o
	gcc -g -o petclub petclub.o tree.o

petclub.o: tree.h
	gcc -c -g petclub.c

tree.o: 
	gcc -c -g tree.c
