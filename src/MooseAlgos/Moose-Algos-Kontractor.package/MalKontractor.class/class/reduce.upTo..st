instance creation
reduce: aString upTo: anInteger
	"self reduce: 'hello world' upTo: 6"
	
	^ (self new upTo: anInteger) reduce: aString 