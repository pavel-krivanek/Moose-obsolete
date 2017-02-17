instance creation
searchFor: aParser thenDo: aBlock
	^ (self searchFor: aParser) setAnswerBlock: aBlock