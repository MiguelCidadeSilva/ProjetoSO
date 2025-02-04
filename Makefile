CC = gcc
CFLAGS = -Wall -g

all: nop gcompress gdecompress bcompress bdecompress encrypt decrypt sdstore sdstored

gcompress: gcompress.o

gcompress.o: gcompress.c

gdecompress: gdecompress.o

gdecompress.o: gdecompress.c

bcompress: bcompress.o

bcompress.o: bcompress.c

bdecompress: bdecompress.o

bdecompress.o: bdecompress.c

encrypt: encrypt.o

encrypt.o: encrypt.c

decrypt: decrypt.o

decrypt.o: decrypt.c

nop: nop.o

nop.o: nop.c

sdstore: sdstore.o

sdstore.o: sdstore.c

sdstored: sdstored.o

sdstored.o: sdstored.c

clean:
	rm -f *compress *decompress encrypt decrypt nop *.o sdstore sdstored server_status server_max_info path
