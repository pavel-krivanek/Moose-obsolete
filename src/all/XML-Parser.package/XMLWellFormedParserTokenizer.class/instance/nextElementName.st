tokenizing
nextElementName
	| nextChar |

	"nil understands #isXMLNameStartChar so it does not need to be tested for"
	(nextChar := streamReader next) isXMLNameStartChar
		ifFalse: [self errorExpectedElementName].
	nameStream
		reset;
		nextPut: nextChar.

	"nil understands #isXMLNameChar so it does not need to be tested for"
	[streamReader peek isXMLNameChar]
		whileTrue: [nameStream nextPut: streamReader next].
	^ nameStream contents.