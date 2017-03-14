private
emitStartPredicateBlock
	self
		emitAll: '[:';
		emitAll: self contextNodeVariable;
		emitAll: ' :';
		emitAll: self contextPositionVariable;
		emitAll: ' :';
		emitAll: self contextSizeVariable;
		emit: $|