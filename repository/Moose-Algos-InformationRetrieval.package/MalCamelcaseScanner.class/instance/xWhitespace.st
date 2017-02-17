private
xWhitespace
	
	| previous |
	next isLetter
		ifFalse:
			[[previous := next.
			next := stream informationRetrievalNext.
			($0 == next and: [previous isSeparator]) ifTrue: [self xZeroWord].
			next isLetter] whileFalse]