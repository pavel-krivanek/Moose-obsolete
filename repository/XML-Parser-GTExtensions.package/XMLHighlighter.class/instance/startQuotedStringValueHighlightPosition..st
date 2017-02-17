highlighting - positions
startQuotedStringValueHighlightPosition: aPosition
	quotedStringValueHighlight :=
		self
			newHighlightColor: self quotedStringValueColor
			position: aPosition