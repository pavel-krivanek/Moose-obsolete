instance creation
named: aString

	"create model in its own environment"

	^self new
		pvtName: aString;
		yourself