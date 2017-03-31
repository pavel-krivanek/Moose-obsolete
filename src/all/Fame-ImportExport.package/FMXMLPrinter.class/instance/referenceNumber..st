parsing
referenceNumber: index

	stream nextPut: $>.
	indent := indent + 1.
	self crTabs.
	stream 
		nextPutAll: '<Value idref="';
		print: index;
		nextPut: $";
		nextPut: $/.
	indent := indent - 1.