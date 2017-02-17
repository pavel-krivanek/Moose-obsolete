handling
handleComment: aString
	(self elementNester isInElement
		and: [self isValidating])
		ifTrue: [self validator validateComment: aString].

	self saxHandler comment: aString.