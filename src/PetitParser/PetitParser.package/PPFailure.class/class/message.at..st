instance creation
message: aString at: anInteger
	"One should not use this method if the furthest failure is supposed to be reported correctly"
	^ self basicNew initializeMessage: aString at: anInteger