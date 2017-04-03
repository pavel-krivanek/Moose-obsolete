highlighting - positions
startQuotedStringHighlightPosition: aPosition
	quotedStringHighlight :=
		self
			newHighlightColor: self quotedStringColor
			position: aPosition