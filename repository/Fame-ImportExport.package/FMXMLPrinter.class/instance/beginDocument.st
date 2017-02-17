parsing
beginDocument
	
	stream nextPutAll: '<?xml version="1.0"?>'.
	self crTabs.
	stream nextPutAll: '<Document'.