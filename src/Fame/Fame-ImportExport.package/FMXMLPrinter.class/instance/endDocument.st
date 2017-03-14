parsing
endDocument
	
	stream nextPut: $>.
	self crTabs.
	stream nextPutAll: '</Document>'