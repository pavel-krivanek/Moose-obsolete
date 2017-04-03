visiting - functions
visitFunctionCall: aFunctionCall
	highlighter startFunctionCallHighlightPosition: self startPosition.
	super visitFunctionCall: aFunctionCall.
	highlighter endFunctionCallHighlightPosition: self endPosition.
	^ aFunctionCall.