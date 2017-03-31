accessing
mooseNameOn: stream
	stream nextPutAll: self entity mooseName.
	stream nextPutAll: ' lines: '.
	stream nextPutAll: beginLine printString.
	stream nextPutAll:  ' - '.
	stream nextPutAll: endLine printString