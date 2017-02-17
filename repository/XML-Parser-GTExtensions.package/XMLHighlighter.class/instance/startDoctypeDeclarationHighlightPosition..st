highlighting - positions
startDoctypeDeclarationHighlightPosition: aPosition
	doctypeDeclarationHighlight :=
		self
			newHighlightColor: self doctypeDeclarationColor
			position: aPosition