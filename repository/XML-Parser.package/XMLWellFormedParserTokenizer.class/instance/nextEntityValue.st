tokenizing - dtd
nextEntityValue
	| quote nextChar |

	quote := streamReader next.

	isInLiteralValue := true.
	characterDataStream reset.
	[((nextChar := streamReader next) == quote
		and: [isIgnoringLiteralValueTerminator not])
			or: [nextChar == nil]]
		whileFalse: [
			nextChar == $&
				ifTrue: [
					streamReader peek == $#
						ifTrue: [
							"character refs are replaced in entity values"
							self nextCharacterReferenceOnCharacterDataStream]
						ifFalse: [
							"general entity refs aren't replaced but must be complete"
							characterDataStream nextPut: $&.
							self nextNameOnCharacterDataStream.
							characterDataStream nextPut: (self expectNext: $;)]]
				ifFalse: [
					nextChar == $%
						ifTrue: [
							self isInExternalSubsetOrExternalEntity
								ifFalse: [
									self
										errorInternalDeclarationParameterEntityReference].
							self nextParameterEntityReferenceOnCharacterDataStream]
						ifFalse: [
							nextChar isXMLChar
								ifFalse: [self errorNonCharInEntityValue: nextChar].
							characterDataStream nextPut: nextChar]]].
	isInLiteralValue := false.

	nextChar == quote
		ifFalse: [
			self
				errorExpectedEntityValueEnd: quote
				butGot: nextChar].

	^ characterDataStream contents.