parsing
parse
	[self
		startParsing;
		parseInput;
		endParsing]
		on: XPathException
		do: [:error |
			error hasPosition
				ifFalse: [error position: readStream position].
			error pass].
	^ handler parsingResult.