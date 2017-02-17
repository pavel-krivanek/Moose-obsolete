tokenizing - dtd
nextInternalSubsetToken
	streamReader skipSeparators.
	streamReader peek == $%
		ifTrue: [
			streamReader next.
			^ self nextParameterEntityReference].
	streamReader peek == $]
		ifTrue: [^ self nextEndInternalSubset].
	self nextSubsetMarkupToken.