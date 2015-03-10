CC                         = gcc
OPENCV_INC     	= `pkg-config --cflags opencv`
OPENCV_LIB      = `pkg-config --libs opencv`
OPTION 		= -Wall
DEBUG 		= -g -O0

CFLAGS          = $(OPENCV_INC) $(OPTION) $(DEBUG)
LDLIBS          = $(OPENCV_LIB) -lm

all : $(TARGET)
	$(CC) $(TARGET).c $(CFLAGS) $(LDLIBS) -o $<