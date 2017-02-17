parsing
parse: aString onError: anError
	| highlightingParser parser highlightedText |

	aString size > self highlightableLengthLimit
		ifTrue: [^ aString asText].

	highlightingParser := XMLHighlightingParser on: aString.
	parser := highlightingParser parser. "used to get position on error"
	[parser parseDocument.
		highlightedText := highlightingParser asHighlightedText]
		on: XMLParserException
		do: [:error |
			highlightedText :=
				highlightingParser
					asHighlightedTextWithRemainderColored: self errorColor
					startingAt:
						(parser currentPosition >= aString size
							ifTrue: [1]
							ifFalse: [parser currentPosition])].
	encoding := highlightingParser encoding.

	^ highlightedText.