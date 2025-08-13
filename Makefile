CC = cc
CFLAGS = -Wall -Wextra -std=c99 -I/opt/homebrew/include/libftdi1
LDFLAGS = -L/opt/homebrew/lib
LIBS = -lftdi1
TARGET = adjust-ftdi-latency
SRCDIR = src
SOURCES = $(SRCDIR)/main.c
PREFIX = /usr/local
BINDIR = $(PREFIX)/bin

.PHONY: all clean install uninstall

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $< $(LIBS)

clean:
	rm -f $(TARGET)

install: $(TARGET)
	install -d $(BINDIR)
	install -m 755 $(TARGET) $(BINDIR)/

uninstall:
	rm -f $(BINDIR)/$(TARGET)
