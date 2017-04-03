visiting - functions
visitArgument: anArgument
	super visitArgument: anArgument.
	highlighter startFunctionCallHighlightPosition: self startPosition.
	^ anArgument.