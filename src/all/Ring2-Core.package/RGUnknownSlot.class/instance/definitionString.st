private - backend interface
definitionString

	^ String streamContents: [ :aStream |
		aStream nextPutAll: '#'; nextPutAll: self name; nextPutAll: ' => '; nextPutAll: self expression ]