printing
printOn: stream
	
	super printOn: stream.
	stream
		space;
		nextPut: $(;
		print: self objects size;
		nextPut: $x;
		print: self attributes size;
		nextPut: $)