highlighting - positions
startVariableReferenceHighlightPosition: aPosition
	variableReferenceHighlight :=
		self
			newHighlightColor: self variableReferenceColor
			position: aPosition