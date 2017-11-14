tokenizing - dtd
nextNotationNameOnCharacterStream
	| nextChar |

	"nil understands #isXMLNameStartChar so it does not need to be tested for"
	(nextChar := streamReader next) isXMLNameStartChar
		ifFalse: [self errorExpectedNotationName].
	characterStream nextPut: nextChar.

	"nil understands #isXMLNameChar so it does not need to be tested for"
	[streamReader peek isXMLNameChar]
		whileTrue: [characterStream nextPut: streamReader next].