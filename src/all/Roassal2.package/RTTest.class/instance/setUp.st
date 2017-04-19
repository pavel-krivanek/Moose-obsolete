initialization
setUp
	'/tmp/results.txt' asFileReference writeStream 
		nextPutAll: self class name asString, '>>', testSelector asString;
		cr.
	
	Transcript show: self class name asString, '>>'.
	Transcript show: testSelector asString; cr