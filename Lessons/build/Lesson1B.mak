CXX = g++
# Update these paths as necessary to match your installation
SDL_LIB = -L/mingw64/lib -lmingw32 -lSDL2main -lSDL2 -mwindows
SDL_INCLUDE = -I../include -IC:/Apps64/MSys2_SDL2/mingw64/include/SDL2 -Dmain=SDL_main
# If your compiler is a bit older you may need to change -std=c++11 to -std=c++0x
CXXFLAGS = -Wall -c -std=c++11 $(SDL_INCLUDE)
LDFLAGS = -mconsole $(SDL_LIB)
EXE = ../bin/SDL_Lesson1B.exe

all: $(EXE)

$(EXE): main.o
	$(CXX) $< $(LDFLAGS) -o $@

main.o: ../Lesson1B/src/main.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

clean:
	rm *.o && rm $(EXE)
