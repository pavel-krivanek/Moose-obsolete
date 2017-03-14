visiting - functions
visitFunctionCall: aFunctionCall
	InlinedFunctionNamesAndSelectors
		at: aFunctionCall name
		ifPresent: [:selector |
			self
				perform: selector
				with: aFunctionCall.
			^ aFunctionCall].

	self
		emitAll: '((';
		emitAll: self contextVariable;
		emitAll: ' resolveFunctionReference: ''';
		emitAll: aFunctionCall name;
		emitAll: ''' contextNode: ';
		emitAll: self contextNodeVariable;
		emitAll: ' arguments: {'.
	super visitFunctionCall: aFunctionCall.
	self emitAll: '})invoke)'.
	^ aFunctionCall.