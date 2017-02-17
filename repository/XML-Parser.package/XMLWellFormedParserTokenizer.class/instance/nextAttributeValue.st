tokenizing
nextAttributeValue
	| quote nextChar |

	((quote := streamReader next) == $"
		or: [quote == $'])
		ifFalse: [self errorExpectedAttributeValueStartButGot: quote].
	
	isInLiteralValue := true.
	characterDataStream reset.
	[((nextChar := streamReader next) == quote
		and: [isIgnoringLiteralValueTerminator not])
			or: [nextChar == $<
				or: [nextChar == nil]]]
		whileFalse: [
			nextChar == $&
				ifTrue: [
					"char refs should be ignored by whitespace normalization"
					self nextGeneralEntityOrCharacterReferenceOnCharacterDataStream]
				ifFalse: [
					nextChar isXMLSeparator
						ifTrue: [nextChar := NormalizedSpace]
						ifFalse: [
							nextChar isXMLChar
								ifFalse: [self errorNonCharInAttributeValue: nextChar]].
					characterDataStream nextPut: nextChar]].
	isInLiteralValue := false.

	nextChar == quote
		ifFalse: [
			self
				errorExpectedAttributeValueEnd: quote
				butGot: nextChar].

	^ characterDataStream contents.