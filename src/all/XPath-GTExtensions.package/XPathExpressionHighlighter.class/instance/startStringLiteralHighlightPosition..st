highlighting - positions
startStringLiteralHighlightPosition: aPosition
	stringLiteralHighlight :=
		self
			newHighlightColor: self stringLiteralColor
			position: aPosition