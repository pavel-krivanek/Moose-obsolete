parsing
beginAttribute: name

	stream nextPut: $>.
	indent := indent + 1.
	self crTabs.
	stream 
		nextPutAll: '<Attribute name="';
		nextPutAll: name;
		nextPut: $"