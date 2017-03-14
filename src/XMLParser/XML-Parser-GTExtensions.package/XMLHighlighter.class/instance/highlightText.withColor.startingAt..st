highlighting
highlightText: aText withColor: aTextColor startingAt: aPosition
	XMLHighlight new
		color: aTextColor;
		start: aPosition;
		applyToText: aText