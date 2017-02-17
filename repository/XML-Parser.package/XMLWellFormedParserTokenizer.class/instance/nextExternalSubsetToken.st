tokenizing - dtd
nextExternalSubsetToken
	streamReader skipSeparators.
	streamReader atEnd
		ifTrue: [^ self].
	streamReader peek == $%
		ifTrue: [
			streamReader next.
			^ self nextParameterEntityReference].
	streamReader peek == $]
		ifTrue: [
			self hasOpenIncludeSections
				ifFalse: [self errorUnexpectedEndConditionalSection].
			^ self nextEndIncludeSection].
	self nextSubsetMarkupToken.