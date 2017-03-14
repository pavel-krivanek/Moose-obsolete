private
emitInitializingDocumentRootVariableReference
	self
		emit: $(;
		emitAll: self documentRootVariable;
		emitAll: ' ifNil:[';
		emitAll: self documentRootVariable;
		emitAll: ':=';
		emitAll: self contextNodeVariable;
		emitAll: ' documentRoot])'