highlighting - positions
startCommentHighlightPosition: aPosition
	commentHighlight :=
		self
			newHighlightColor: self commentColor
			position: aPosition