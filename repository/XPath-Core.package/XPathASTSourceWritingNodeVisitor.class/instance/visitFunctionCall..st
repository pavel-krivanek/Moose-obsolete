visiting - functions
visitFunctionCall: aFunctionCall
	self
		emitAll: aFunctionCall name;
		emit: $(.
	super visitFunctionCall: aFunctionCall.
	self emit: $).
	^ aFunctionCall.