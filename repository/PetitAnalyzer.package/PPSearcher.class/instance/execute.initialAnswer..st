public
execute: aParser initialAnswer: anObject
	"Perform the search rules of the receiver on aParser. Inject anObject into the matches and answer the result."

	| previous |
	previous := context.
	answer := anObject.
	context := Dictionary new.
	aParser allParsersDo: [ :each | 
		self performRulesOn: each ].
	context := previous.
	^ answer