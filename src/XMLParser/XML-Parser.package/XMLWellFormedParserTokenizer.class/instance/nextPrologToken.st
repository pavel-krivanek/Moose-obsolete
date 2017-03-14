tokenizing
nextPrologToken
	streamReader skipSeparators.
	self expectNext: $<.
	streamReader peek == $?
		ifTrue: [^ self nextPI].
	self nextNonPIPrologOrContentMarkupToken.