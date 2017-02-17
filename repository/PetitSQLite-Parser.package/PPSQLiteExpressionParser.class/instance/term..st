specifying
term: aParser
	"Defines the initial term aParser of the receiver."
	
	child isNil
		ifTrue: [ child := aParser ]
		ifFalse: [ self error: 'Unable to redefine the term.' ]