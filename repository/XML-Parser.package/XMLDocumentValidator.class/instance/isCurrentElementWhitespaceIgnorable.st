testing
isCurrentElementWhitespaceIgnorable
	^ self hasCurrentElementValidator
		and: [self currentElementValidator ignoresWhitespace]