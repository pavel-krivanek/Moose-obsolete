parsing
beginAttribute: name

	indent := indent + 1.
	self crTabs.
	stream 
		nextPut: $(;
		nextPutAll: name