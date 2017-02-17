visiting - variables
visitVariableReference: aVariableReference
	self
		emit: $$;
		emitAll: aVariableReference name