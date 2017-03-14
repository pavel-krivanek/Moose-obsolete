as yet unclassified
parse: aString rule: aSymbol to: anObject
	| production |
	production := self parserInstanceFor: aSymbol.
	result := production end parse: aString.
	self
		deny: result isPetitFailure
		description: 'Unable to parse ' , aString printString.
	self assert: result = anObject.
	
	^ result