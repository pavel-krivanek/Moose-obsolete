initialization
initializeMessage: aString at: anInteger
	"One should not use this method if the furthest failure is supposed to be reported correctly"
	message := aString.
	position := anInteger.