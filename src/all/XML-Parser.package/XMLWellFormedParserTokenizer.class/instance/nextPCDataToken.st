tokenizing
nextPCDataToken
	| isWhitespace nextChar closingBracketsRead |

	isWhitespace := true.
	characterStream reset.
	closingBracketsRead := 0.
	[(nextChar := streamReader peek) == $<
		or: [nextChar == nil]]
		whileFalse: [
			streamReader next == $&
				ifTrue: [
					self nextGeneralEntityOrCharacterReferenceOnCharacterStream
						ifNotNil: [:writtenChar |
							isWhitespace
								ifTrue: [isWhitespace := writtenChar isXMLSeparator]]]
				ifFalse: [
					(isWhitespace
						and: [isWhitespace := nextChar isXMLSeparator])
						ifFalse: [
							nextChar == $]
								ifTrue: [
									isWhitespace := false.
									closingBracketsRead := closingBracketsRead + 1]
								ifFalse: [
									closingBracketsRead > 0
										ifTrue: [
											(closingBracketsRead >= 2
												and: [nextChar == $>])
												ifTrue: [
													self errorUnexpectedCDataTerminator].
											closingBracketsRead := 0].
									nextChar isXMLChar
										ifFalse: [self errorNonCharInPCData: nextChar]]].
					characterStream nextPut: nextChar]].
	isWhitespace
		ifTrue: [
			characterStream position > 0
				ifTrue: [driver handleWhitespace: characterStream contents]]
		ifFalse: [driver handlePCData: characterStream contents].