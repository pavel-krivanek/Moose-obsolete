highlighting - positions
startOperatorHighlightPosition: aPosition
	operatorHighlight :=
		self
			newHighlightColor: self operatorColor
			position: aPosition