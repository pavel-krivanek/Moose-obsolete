parsing
endAttribute: name

	stream nextPut: $>.
	self crTabs.
	stream 
		nextPutAll: '</Attribute'.
	indent := indent - 1.