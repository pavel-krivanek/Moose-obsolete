tokenizing
nextEntityName
	| nextChar |

	nameStream reset.
	"nil understands isXMLNameStartChar so it does not need to be tested for"
	(nextChar := streamReader next) isXMLNameStartChar
		ifFalse: [self errorExpectedEntityName].
	nameStream nextPut: nextChar.

	"nil understands isXMLNameChar so it does not need to be tested for"
	[(nextChar := streamReader peek) isXMLNameChar]
		whileTrue: [nameStream nextPut: streamReader next].
	^ nameStream contents.