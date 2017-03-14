converting
asHighlightedText
	| text |

	text := self expressionSource asText.
	highlighter highlightText: text.
	^ text.