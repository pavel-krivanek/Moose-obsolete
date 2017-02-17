queries
isEndOfLine
	self atEnd ifTrue: [ ^ true ].
	self insideCRLF ifTrue: [ ^ false ].
	^ (self peek = (Character codePoint: 13) or: [ self peek = (Character codePoint: 10)]).