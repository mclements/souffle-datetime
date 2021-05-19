test: libfunctors.so
	souffle -D- test.dl

rosetta: libfunctors.so
	souffle -D- rosetta.dl

movie: libfunctors.so
	souffle -D- movie.dl

libfunctors.so: datetime.cpp
	g++ -shared -fPIC datetime.cpp -o libfunctors.so

datetime.cpp: configure
	./configure

configure: configure.ac
	autoconf

clean:
	@rm -f libfunctors.so
	@rm -f datetime.cpp
