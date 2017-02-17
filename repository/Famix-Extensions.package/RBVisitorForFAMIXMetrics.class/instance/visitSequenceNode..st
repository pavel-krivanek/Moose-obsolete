enumerating
visitSequenceNode: aSequenceNode 
	
	super visitSequenceNode: aSequenceNode.
	numberOfStatements := numberOfStatements + aSequenceNode statements size.
	self methodComplexity: self methodComplexity + (0.5 * aSequenceNode temporaries size)