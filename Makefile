CC := gcc
CFLAGS := -O2 -Wall

all: tcpserver

tcpserver: tcpserver.o
	$(CC) $(CFLAGS) tcpserver.o -o tcpserver

tcpserver.o: tcpserver.c
	$(CC) $(CFLAGS) -c tcpserver.c

clean:
	rm -f *.o tcpserver