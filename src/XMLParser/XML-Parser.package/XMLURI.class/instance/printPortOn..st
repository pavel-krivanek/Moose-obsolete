printing
printPortOn: aStream
	self hasPort
		ifTrue: [
			aStream nextPut: $:.
			port printOn: aStream]