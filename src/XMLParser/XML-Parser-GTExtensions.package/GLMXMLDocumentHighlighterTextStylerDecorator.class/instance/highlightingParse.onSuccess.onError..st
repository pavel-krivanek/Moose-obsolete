private
highlightingParse: aString onSuccess: aOneArgumentBlock onError: aTwoArgumentBlock
	| highlightingParser parser |

	highlightingParser := XMLHighlightingParser on: aString.
	parser := highlightingParser parser. "used to get position on error"
	[parser parseDocument]
		on: XMLParserException
		do: [:error |
			^ aTwoArgumentBlock
				value: highlightingParser
				value: parser currentPosition].
	^ aOneArgumentBlock value: highlightingParser.