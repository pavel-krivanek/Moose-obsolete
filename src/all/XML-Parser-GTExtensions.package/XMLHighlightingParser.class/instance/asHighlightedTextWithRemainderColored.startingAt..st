converting
asHighlightedTextWithRemainderColored: aTextColor startingAt: aPosition
	| text |

	text := self asHighlightedText.
	highlighter
		highlightText: text
		withColor: aTextColor
		startingAt: aPosition.
	^ text.