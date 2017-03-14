converting
asHighlightedText
	| text |

	text := self input asString asText.
	highlighter highlightText: text.
	^ text.