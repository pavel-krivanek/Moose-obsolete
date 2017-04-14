highlighting - positions
startQuotedStringNameHighlightPosition: aPosition
	quotedStringNameHighlight :=
		self
			newHighlightColor: self quotedStringNameColor
			position: aPosition