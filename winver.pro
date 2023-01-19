CONFIG -= qt

QMAKE_LFLAGS += -mwindows -static-libgcc -nostdlib -flto
QMAKE_CFLAGS += -fno-asynchronous-unwind-tables
LIBS += -lkernel32 -lshell32

SOURCES += main.c
