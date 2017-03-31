highlighting - positions
endFunctionCallHighlightPosition: aPosition
	self
		endHighlight: functionCallHighlightStack removeLast
		position: aPosition