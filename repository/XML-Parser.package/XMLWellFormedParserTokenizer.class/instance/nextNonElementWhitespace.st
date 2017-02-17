tokenizing
nextNonElementWhitespace
	| nextChar |

	"nil understands isXMLSeparator so it is not tested for first"
	[(nextChar := streamReader peek) isXMLSeparator]
		whileTrue: [streamReader next].
	(nextChar == nil
		or: [nextChar == $<])
		ifFalse: [self errorNonElementPCDataCharacter: streamReader next].