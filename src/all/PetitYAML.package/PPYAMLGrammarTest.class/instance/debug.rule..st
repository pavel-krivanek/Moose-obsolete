parsing
debug: aString rule: aSymbol
	| production |
	production := self parserInstanceFor: aSymbol.
	
	debugResult := production end enableDebug parse: aString withContext: context.
	result := debugResult children first result.
	self
		deny: result isPetitFailure
		description: 'Unable to parse ' , aString printString.
	debugResult inspect.
	^ result