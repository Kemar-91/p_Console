CFLAGS = -Wall -g -std=c++11 #definition de variable

all : main

coord.o : coord.hpp coord.cpp
	g++ $(CFLAGS) -c coord.cpp

Fourmi.o : Fourmi.hpp Fourmi.cpp
	g++ $(CFLAGS) -c Fourmi.cpp	

Grille.o : Grille.hpp Grille.cpp
	g++ $(CFLAGS) -c Grille.cpp

Place.o : Place.hpp Place.cpp
	g++ $(CFLAGS) -c Place.cpp

main: main.cpp coord.o Fourmi.o Grille.o Place.o
	g++ $(CFLAGS) main.cpp coord.o Fourmi.o Grille.o Place.o -o main

clean:
	rm -f main coord.o Fourmi.o Grille.o Place.o
