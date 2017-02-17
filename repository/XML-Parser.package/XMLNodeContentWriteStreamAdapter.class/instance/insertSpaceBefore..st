private
insertSpaceBefore: aCharacter
	(lastChar == nil
		or: [lastChar isXMLWhitespace
			or: [aCharacter isXMLWhitespace]])
		ifFalse: [stream nextPut: SpaceCharacter]