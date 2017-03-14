highlighting - positions
startFunctionCallHighlightPosition: aPosition
	functionCallHighlightStack addLast:
		(self
			newHighlightColor: self functionCallColor
			position: aPosition)