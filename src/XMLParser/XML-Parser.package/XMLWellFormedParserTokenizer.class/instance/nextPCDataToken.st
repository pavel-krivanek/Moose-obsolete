tokenizing
nextPCDataToken
	| isWhitespace nextChar closingBracketsRead |

	isWhitespace := true.
	characterDataStream reset.
	closingBracketsRead := 0.
	[(nextChar := streamReader peek) == $<
		or: [nextChar == nil]]
		whileFalse: [
			streamReader next == $&
				ifTrue: [
					self nextGeneralEntityOrCharacterReferenceOnCharacterDataStream
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
					characterDataStream nextPut: nextChar]].
	isWhitespace
		ifTrue: [
			characterDataStream position > 0
				ifTrue: [driver handleWhitespace: characterDataStream contents]]
		ifFalse: [driver handlePCData: characterDataStream contents].