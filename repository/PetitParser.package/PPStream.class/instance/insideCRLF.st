queries
insideCRLF
	(position < 1) ifTrue: [ ^ false ].
	
	^ (self peek = (Character codePoint: 10)) and: [ self peekBack = (Character codePoint: 13) ]