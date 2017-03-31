private
emitStartContextBlock
	self
		emitAll: '[:';
		emitAll: self contextNodeVariable;
		emitAll: ' :';
		emitAll: self contextVariable;
		emitAll: ' :';
		emitAll: self nodeTestsVariable;
		emitAll: '| |';
		emitAll: self contextPositionVariable;
		emitSpace;
		emitAll: self contextSizeVariable;
		emitSpace;
		emitAll: self documentRootVariable;
		emit: $|