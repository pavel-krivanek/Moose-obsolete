converting
asHighlightedText
	| text |

	text := self inputText.
	highlighter highlightText: text.
	^ text.