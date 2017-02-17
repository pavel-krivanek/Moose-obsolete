highlighting - positions
startEntityReferenceHighlightPosition: aPosition
	entityReferenceHighlight :=
		self
			newHighlightColor: self entityReferenceColor
			position: aPosition