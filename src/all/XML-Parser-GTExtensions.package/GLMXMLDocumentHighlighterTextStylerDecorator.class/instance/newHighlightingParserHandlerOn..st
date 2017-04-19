private
newHighlightingParserHandlerOn: aString
	| parserHandler |

	parserHandler := XMLHighlightingParser on: aString.
	self configuration
		ifNotNil: [parserHandler configuration: self configuration copy].
	^ parserHandler.