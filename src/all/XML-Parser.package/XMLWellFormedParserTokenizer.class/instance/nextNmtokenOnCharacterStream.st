tokenizing - dtd
nextNmtokenOnCharacterStream
	"matches the Nmtoken production"
	| nextChar |

	"nil understands isXMLNameChar so it does not need to be tested for"
	(nextChar := streamReader next) isXMLNameChar
		ifFalse: [self errorExpectedNmtoken].
	characterStream nextPut: nextChar.

	"nil understands isXMLNameChar so it does not need to be tested for"
	[(nextChar := streamReader peek) isXMLNameChar]
		whileTrue: [characterStream nextPut: streamReader next].