private
highlightingParse: aString onSuccess: aOneArgumentBlock onError: aTwoArgumentBlock
	| highlightingParserHandler highlightingParser |

	highlightingParserHandler := self newHighlightingParserHandlerOn: aString.
	highlightingParser := self newHighlightingParserFromHandler: highlightingParserHandler.
	[highlightingParser parseDocument]
		on: XMLParserException
		do: [:error |
			^ aTwoArgumentBlock
				value: highlightingParserHandler
				value: highlightingParser currentPosition].
	^ aOneArgumentBlock value: highlightingParserHandler.