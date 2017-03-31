printing
mooseDisplayStringOn: stream
	
	stream nextPutAll: (self mooseName asString , ' (' , self versions size printString , ')')