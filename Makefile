test:
	g++ -shared -fPIC datetime.cpp -o libfunctors.so
	souffle test.dl
	cat Test.csv
