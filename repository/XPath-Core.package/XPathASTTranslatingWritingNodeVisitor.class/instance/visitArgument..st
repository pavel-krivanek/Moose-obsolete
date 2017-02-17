visiting - functions
visitArgument: anArgument
	super visitArgument: anArgument.
	self emit: $..
	^ anArgument.