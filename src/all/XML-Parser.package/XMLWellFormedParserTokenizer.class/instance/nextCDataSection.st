tokenizing
nextCDataSection
	| closingBracketsRead nextChar |

	self expectNextAll: '[CDATA['.
	characterDataStream reset.
	closingBracketsRead := 0.
	[(nextChar := streamReader next) == nil
		or: [closingBracketsRead = 2
			and: [nextChar == $>]]]
		whileFalse: [
			nextChar == $]
				ifTrue: [
					closingBracketsRead = 2
						ifTrue: [characterDataStream nextPut: $]]
						ifFalse: [closingBracketsRead := closingBracketsRead + 1]]
				ifFalse: [
					closingBracketsRead > 0
						ifTrue: [
							1 to: closingBracketsRead do: [:i |
								characterDataStream nextPut: $]].
							closingBracketsRead := 0].
					nextChar isXMLChar
						ifFalse: [self errorNonCharInCDataSection: nextChar].
					characterDataStream nextPut: nextChar]].
	nextChar
		ifNil: [self errorExpectedCDataSectionTerminator].
	driver handleCData: characterDataStream contents.