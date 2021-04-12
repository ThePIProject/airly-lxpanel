CXX		  := gcc
CXX_FLAGS := -Wall `pkg-config --cflags gtk+-2.0 lxpanel` -shared -fPIC

BIN		:= bin
SRC		:= src
INCLUDE	:= include
LIB		:= lib

LIBRARIES	:= `pkg-config --libs lxpanel`
EXECUTABLE	:= airly_pannel

all: $(BIN)/$(EXECUTABLE)

run: clean all
	clear
	./$(BIN)/$(EXECUTABLE)

$(BIN)/$(EXECUTABLE): $(SRC)/*.c
	$(CXX) $(CXX_FLAGS) $^ -o $@.so $(LIBRARIES)

clean:
	-rm $(BIN)/*


install:
	sudo cp $(BIN)/$(EXECUTABLE).so /usr/lib/arm-linux-gnueabihf/lxpanel/plugins
	lxpanelctl restart