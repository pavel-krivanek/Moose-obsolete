tokenizing - dtd
nextEntityValue
	| quote nextChar |

	quote := streamReader next.

	isInLiteralValue := true.
	characterStream reset.
	[((nextChar := streamReader next) == quote
		and: [isIgnoringLiteralValueTerminator not])
			or: [nextChar == nil]]
		whileFalse: [
			nextChar == $&
				ifTrue: [
					streamReader peek == $#
						ifTrue: [
							"character refs are replaced in entity values"
							self nextCharacterReferenceOnCharacterStream]
						ifFalse: [
							"general entity refs aren't replaced but must be complete"
							characterStream nextPut: $&.
							self nextEntityNameOnCharacterStream.
							characterStream nextPut: (self expectNext: $;)]]
				ifFalse: [
					nextChar == $%
						ifTrue: [
							self isInExternalSubsetOrExternalEntity
								ifFalse: [
									self
										errorInternalDeclarationParameterEntityReference].
							self nextParameterEntityReferenceOnCharacterStream]
						ifFalse: [
							nextChar isXMLChar
								ifFalse: [self errorNonCharInEntityValue: nextChar].
							characterStream nextPut: nextChar]]].
	isInLiteralValue := false.

	nextChar == quote
		ifFalse: [
			self
				errorExpectedEntityValueEnd: quote
				butGot: nextChar].

	^ characterStream contents.