default: all

CXXFLAGS := -I./include -g

CXX := g++

BINARIES := hubo-simple-demo-cpp

LIBS := -lach -lrt -lm -lc
hubo-simple-demo-cpp: src/hubo-simple-demo-cpp.o
	$(CXX)  -o $@ $< $(LIBS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c $<

clean:
	rm -f $(BINARIES) src/*.o
