printing
mooseDisplayStringOn: stream 
	self behaviour isNil 
		ifTrue: [stream nextPutAll: 'Unknown activation']
		ifFalse: [self behaviour mooseDisplayStringOn: stream ].
	stream 
		nextPutAll: ' (';
		nextPutAll: self duration asString;
		nextPut: $)