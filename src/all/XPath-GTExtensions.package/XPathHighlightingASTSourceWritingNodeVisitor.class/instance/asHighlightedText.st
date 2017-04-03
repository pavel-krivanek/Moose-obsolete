converting
asHighlightedText
	| text |

	text := self contents asText.
	highlighter highlightText: text.
	^ text.