private
xCapitalizedWord

	buffer nextPut: next.
	next := stream informationRetrievalNext.
	next isLetter
		ifTrue: [ next isLowercase
				ifTrue: [	buffer collection at: 1put: buffer collection first asLowercase.
						self xLowercaseWord ]
				ifFalse: [self xUppercaseWord]
		]