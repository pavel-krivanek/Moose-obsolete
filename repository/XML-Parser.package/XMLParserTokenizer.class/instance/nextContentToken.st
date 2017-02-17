tokenizing
nextContentToken
	streamReader peek == $<
		ifTrue: [
			streamReader next.
			^ self nextContentMarkupToken].
	elementNester isInElement
		ifTrue: [^ self nextPCDataToken].
	self nextNonElementWhitespace.