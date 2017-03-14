parsing
parse: aString onError: anError
	| highlightedText |

	aString size > self highlightableLengthLimit
		ifTrue: [^ aString asText].

	self
		highlightingParse: aString
		onSuccess: [:highlightingParser |
			highlightedText := highlightingParser asHighlightedText.
			encoding := highlightingParser encoding]
		onError: [:highlightingParser :position |
			highlightedText :=
				highlightingParser
					asHighlightedTextWithRemainderColored: self errorColor
					startingAt:
						(position >= aString size
							ifTrue: [1]
							ifFalse: [position]).
			encoding := highlightingParser encoding].

	^ highlightedText.