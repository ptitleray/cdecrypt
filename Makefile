CXXFLAGS = -std=c++11 -D_FILE_OFFSET_BITS=64
LDFLAGS = -lssl -lcrypto

all: cdecrypt

cdecrypt: main.o
	$(CXX) main.o -o $@ $(LDFLAGS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $<

clean:
	$(RM) main.o
	$(RM) cdecrypt
