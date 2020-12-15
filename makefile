.PHONY: default clean build run

CC  = gcc
CXX = g++

GME_ROOT := ..
GME_DIR  := $(GME_ROOT)/gme

BIN			:= example.exe
CSRC		:= \
					../demo/basics.c
CPPSRC	:= \
					../demo/Wave_Writer.cpp \
					$(wildcard $(GME_DIR)/*.cpp)
COBJ		:= $(CSRC:.c=.o)
CPPOBJ	:= $(CPPSRC:.cpp=.o)
OBJ 		:= $(COBJ) $(CPPOBJ)

CPPFLAGS += -I$(GME_ROOT)

default: build run

build: $(BIN)

run: build

$(BIN): $(OBJ)
	$(CXX) -o $@ $^
