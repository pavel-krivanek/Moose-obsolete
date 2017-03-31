comparing
hash
	^ super hash bitXor: [ self methodDeclarations hash ]