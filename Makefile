CXX = x86_64-w64-mingw32-g++ #Windows
#CXX = g++ #Linux

RunMascota : bin/mascota
	./bin/mascota

bin/mascota : src/mascota.cpp include/Mascota.hpp
	$(CXX) src/mascota.cpp -o bin/mascota -I include

CleanMascota : bin/mascota
    rm bin/mascota
	