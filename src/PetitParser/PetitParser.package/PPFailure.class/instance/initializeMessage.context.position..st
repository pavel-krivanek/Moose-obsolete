initialization
initializeMessage: aString context: aPPContext position: anInteger
	message := aString.
	context := aPPContext.
	position := anInteger.
	
	"record the furthest failure encountered while parsing the input stream "
	aPPContext noteFailure: self.	