tokenizing - dtd
nextContentModelUnaryOperatorOnCharacterStream
	| nextChar |

	((nextChar := streamReader peek) == $?
		or: [nextChar == $*
			or: [nextChar == $+]])
		ifTrue: [characterStream nextPut: streamReader next]