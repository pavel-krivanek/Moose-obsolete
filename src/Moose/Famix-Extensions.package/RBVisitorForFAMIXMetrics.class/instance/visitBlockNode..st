enumerating
visitBlockNode: aBlockNode 
	
	super visitBlockNode: aBlockNode.
	numberOfStatements := numberOfStatements + aBlockNode body size.