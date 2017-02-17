printing
mooseDisplayStringOn: stream
	 
	stream nextPutAll: 'a SourceCodeLine: '.
	self text notNil ifTrue: [ stream nextPutAll: self text ]