visiting
visitExpressionRoot: anExpressionRoot
	self
		generateNewContextBlockVariables;
		emitStartContextBlock.
	super visitExpressionRoot: anExpressionRoot.
	self emitEndBlock.
	^ anExpressionRoot.