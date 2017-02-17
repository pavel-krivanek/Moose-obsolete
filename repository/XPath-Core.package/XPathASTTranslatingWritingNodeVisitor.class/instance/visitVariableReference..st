visiting - variables
visitVariableReference: aVariableReference
	self
		emit: $(;
		emitAll: self contextVariable;
		emitAll: ' resolveVariableReference: ''';
		emitAll: aVariableReference name;
		emitAll: ''')'.
	^ aVariableReference.