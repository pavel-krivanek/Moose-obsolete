printing
mooseNameOn: stream
	
	text ifNil: [ stream nextPutAll: ('SourceLine: '). ^ self ].
	stream nextPutAll: ('SourceLine: ' , text)