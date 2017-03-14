highlighting - positions
startPredicateHighlightPosition: aPosition
	predicateHighlightStack addLast:
		(self
			newHighlightColor: self predicateColor
			position: aPosition)