.PHONY: default clean build run

CC  = gcc
CXX = g++

GME_VER  := 0.5.2
GME_ROOT := ./gem/Game_Music_Emu-$(GME_VER)
GME_DIR  := $(GME_ROOT)/gme

BIN			:= nsf2wav.exe
CSRC		:= \
					./nfs2wav.c
CPPSRC	:= \
					$(GME_ROOT)/demo/Wave_Writer.cpp \
					$(wildcard $(GME_DIR)/*.cpp)
COBJ		:= $(CSRC:.c=.o)
CPPOBJ	:= $(CPPSRC:.cpp=.o)
OBJ 		:= $(COBJ) $(CPPOBJ)

CPPFLAGS += -I$(GME_ROOT) -I$(GME_ROOT)/demo

default: build run

build: $(BIN)

run: build

clean:
	-rm $(OBJ)
	-rm $(BIN)

$(BIN): $(OBJ)
	$(CXX) -o $@ $^
