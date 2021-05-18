test: libfunctors.so
	souffle test.dl
	cat Test.csv

rosetta: libfunctors.so
	souffle rosetta.dl
	cat SummaryDates.csv
	cat SummaryScores.csv

movie: libfunctors.so
	souffle movie.dl

libfunctors.so: datetime.cpp
	g++ -shared -fPIC datetime.cpp -o libfunctors.so
