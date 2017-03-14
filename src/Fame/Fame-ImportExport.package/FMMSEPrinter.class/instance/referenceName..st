parsing
referenceName: name

	stream 
		space;
		nextPut: $(;
		nextPutAll: #ref:;
		space;
		nextPutAll: name;
		nextPut: $)