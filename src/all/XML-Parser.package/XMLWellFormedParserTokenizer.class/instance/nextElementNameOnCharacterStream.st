tokenizing - dtd
nextElementNameOnCharacterStream
	| nextChar |

	"nil understands isXMLNameStartChar so it does not need to be tested for"
	(nextChar := streamReader next) isXMLNameStartChar
		ifFalse: [self errorExpectedElementName].
	characterStream nextPut: nextChar.

	"nil understands isXMLNameChar so it does not need to be tested for"
	[(nextChar := streamReader peek) isXMLNameChar]
		whileTrue: [characterStream nextPut: streamReader next].