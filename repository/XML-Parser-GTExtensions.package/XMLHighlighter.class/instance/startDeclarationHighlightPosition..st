highlighting - positions
startDeclarationHighlightPosition: aPosition
	declarationHighlight :=
		self
			newHighlightColor: self declarationColor
			position: aPosition