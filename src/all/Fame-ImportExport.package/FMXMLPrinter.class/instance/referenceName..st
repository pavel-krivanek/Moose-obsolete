parsing
referenceName: name

	stream nextPut: $>.
	indent := indent + 1.
	self crTabs.
	stream 
		nextPutAll: '<ExternalReference name="';
		nextPutAll: name;
		nextPut: $";
		nextPut: $/.
	indent := indent - 1.