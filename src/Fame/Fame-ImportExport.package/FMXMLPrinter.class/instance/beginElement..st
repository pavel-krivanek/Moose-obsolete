parsing
beginElement: name

	stream nextPut: $>.
	indent := indent + 1.
	self crTabs.
	stream 
		nextPutAll: '<Element name="';
		nextPutAll: name;
		nextPutAll: '"'