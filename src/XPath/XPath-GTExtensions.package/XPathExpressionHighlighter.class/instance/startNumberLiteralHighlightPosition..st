highlighting - positions
startNumberLiteralHighlightPosition: aPosition
	numberLiteralHighlight :=
		self
			newHighlightColor: self numberLiteralColor
			position: aPosition