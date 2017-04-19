tokenizing
nextNonElementWhitespace
	| nextChar |

	"nil understands isXMLSeparator so it is not tested for first"
	[(nextChar := streamReader peek) isXMLSeparator]
		whileTrue: [streamReader next].
	(nextChar == $<
		or: [nextChar == nil])
		ifFalse: [self errorNonElementPCDataCharacter: streamReader next].