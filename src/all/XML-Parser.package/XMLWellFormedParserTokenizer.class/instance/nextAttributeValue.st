tokenizing
nextAttributeValue
	| quote nextChar |

	((quote := streamReader next) == $"
		or: [quote == $'])
		ifFalse: [self errorExpectedAttributeValueStartButGot: quote].
	
	isInLiteralValue := true.
	characterStream reset.
	[((nextChar := streamReader next) == quote
		and: [isIgnoringLiteralValueTerminator not])
			or: [nextChar == $<
				or: [nextChar == nil]]]
		whileFalse: [
			nextChar == $&
				ifTrue: [
					"char refs should be ignored by whitespace normalization"
					self nextGeneralEntityOrCharacterReferenceOnCharacterStream]
				ifFalse: [
					nextChar isXMLSeparator
						ifTrue: [nextChar := NormalizedSpace]
						ifFalse: [
							nextChar isXMLChar
								ifFalse: [self errorNonCharInAttributeValue: nextChar]].
					characterStream nextPut: nextChar]].
	isInLiteralValue := false.

	nextChar == quote
		ifFalse: [
			self
				errorExpectedAttributeValueEnd: quote
				butGot: nextChar].

	^ characterStream contents.