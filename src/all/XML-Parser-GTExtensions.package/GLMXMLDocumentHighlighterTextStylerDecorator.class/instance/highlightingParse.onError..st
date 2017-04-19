parsing
highlightingParse: aString onError: aBlock
	| highlightingParserHandler highlightingParser |

	highlightingParserHandler :=
		self newHighlightingParserHandlerOn: aString.
	highlightingParser :=
		self newHighlightingParserFromHandler: highlightingParserHandler.
	[highlightingParser parseDocument]
		on: XMLParserException
		do: [:error |
			aBlock cull: error.
			self encoding: highlightingParserHandler encoding.
			^ highlightingParserHandler
				asHighlightedTextColored: self errorColor
				startingAt:
					(self
						highlightStartPositionForErrorAt:
							highlightingParser currentPosition
						in: aString)].
	self encoding: highlightingParserHandler encoding.
	^ highlightingParserHandler asHighlightedText.