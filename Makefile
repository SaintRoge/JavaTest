.PHONY: clean, mrproper, install

.SUFFIXES:

app = Java
lib =
CXX = javac
RM = rm -rf
SRC = src
FLAGS = -g

all: src/JavaTest.java
		$(CXX) $(FLAGS) $^
		@echo "Finished building: $^"
		@echo "Build finished. You are ready to use $(app) :-)"   

clean:
		$(RM) *.o 
		@echo "All project useless files/folders have been deleted"

mrproper: clean
		$(RM) $(app)
		@echo "All project files/folders have been deleted"  

install: 
		sudo apt-get install libsfml-dev build-essential
		@echo "The SFML lib and the c++ builder have been installed"
		make all

run: all
		@echo "Trying to start $(app)..."
		./$(app)

pro: all clean run

zpro: install clean run

one: all run mrproper
