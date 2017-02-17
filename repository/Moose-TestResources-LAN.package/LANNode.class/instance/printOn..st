printing
printOn: aStream
	"print a textual representation of myself on the argument, aStream"

	super printOn: aStream.
	aStream nextPutAll: ': ' , self name asString.
	self nextNode ifNotNil: [ aStream nextPutAll: ', pointing to ' , self nextNode name printString ]