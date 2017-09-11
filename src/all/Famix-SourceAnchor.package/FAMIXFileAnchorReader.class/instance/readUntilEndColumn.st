reading
readUntilEndColumn
	fileAnchor endColumn
		ifNil: [ readStream next
				ifNotNil: [ readStream oneBack.
					[ (char := readStream next) isCr or: [ char isLf ] ] whileFalse: [ writeStream nextPut: char ] ] ]
		ifNotNil: [ :ec | 
			| numberOfCharToRead |
			numberOfCharToRead := self startLine = fileAnchor endLine
				ifTrue: [ ec - (fileAnchor startColumn ifNil: [ 1 ]) ]
				ifFalse: [ ec - 1 ].
			writeStream nextPutAll: (readStream next: numberOfCharToRead) ]