operators
// aParser 
	"
		Answer a new parser that parses the receiver, if the receiver fails try with aParser (ordered-choice).
		If the receiver passes, limit must pass as well.
	"
	
	^ PPLimitedChoiceParser with: self with: aParser