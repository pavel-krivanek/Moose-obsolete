tokenizing - dtd
nextNmtokenOnDeclarationStream
	"matches the Nmtoken production"
	| nextChar |

	"nil understands isXMLNameChar so it does not need to be tested for"
	(nextChar := streamReader next) isXMLNameChar
		ifFalse: [self errorExpectedNmtoken].
	declarationStream nextPut: nextChar.

	"nil understands isXMLNameChar so it does not need to be tested for"
	[(nextChar := streamReader peek) isXMLNameChar]
		whileTrue: [declarationStream nextPut: streamReader next].