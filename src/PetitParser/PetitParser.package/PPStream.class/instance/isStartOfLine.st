queries
isStartOfLine
	(position = 0) ifTrue: [ ^ true ].

	self insideCRLF ifTrue: [ ^ false ].
	
	^ (self peekBack = (Character codePoint: 13)) or: [ self peekBack = (Character codePoint: 10)].