test:
	g++ -shared -fPIC datetime.cpp -o libfunctors.so
	souffle test.dl
	cat Test.csv

rosetta:
	g++ -shared -fPIC datetime.cpp -o libfunctors.so
	souffle rosetta.dl
	cat SummaryDates.csv
	cat SummaryScores.csv
