converting
asHighlightedText
	| text |

	"printString/asString forward to printStringLimitedTo: which truncates,
	so contents is used instead to get the complete text"
	text := self contents asText.
	self highlighter highlightText: text.
	^ text.