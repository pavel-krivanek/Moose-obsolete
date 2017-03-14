parsing
endElement: name

	stream nextPut: $>.
	self crTabs.
	stream 
		nextPutAll: '</Element'.
	indent := indent - 1.