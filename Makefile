CC = g++
CPPFLAGS = -std=c++11 -fPIC -fopenmp -lm -Ofast
EXE = HPE
OBJS1 = HPE.o src/hpe.o src/struc.o src/line.o src/proNet.o
OBJS2 = src/smore/src/random.o src/smore/src/util.o
OBJS3 = src/struc2vec/struc2vec.o src/struc2vec/src/graph.o src/struc2vec/src/utils.o src/struc2vec/src/word2vec/build/lib/CMakeFiles/word2vec.dir/*.cpp.o

all :  $(EXE)

$(EXE) : $(OBJS1) $(OBJS2) $(OBJS3)
	$(CC) $(CPPFLAGS) -o $(EXE) $(OBJS1) $(OBJS2) $(OBJS3)

%.o : %.cpp
	$(CC) $(CPPFLAGS) -c -o $@ $<

clean :
	rm $(EXE)
	rm $(OBJS1)