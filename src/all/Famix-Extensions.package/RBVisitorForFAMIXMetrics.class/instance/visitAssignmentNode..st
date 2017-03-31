enumerating
visitAssignmentNode: anAssignmentNode 
	
	super visitAssignmentNode: anAssignmentNode.
	methodComplexity := methodComplexity + 0.5