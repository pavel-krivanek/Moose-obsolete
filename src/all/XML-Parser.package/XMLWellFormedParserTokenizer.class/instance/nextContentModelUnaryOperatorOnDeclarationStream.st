tokenizing - dtd
nextContentModelUnaryOperatorOnDeclarationStream
	| nextChar |

	((nextChar := streamReader peek) == $?
		or: [nextChar == $*
			or: [nextChar == $+]])
		ifTrue: [declarationStream nextPut: streamReader next]