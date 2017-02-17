tokenizing - dtd
nextEndDoctypeDeclaration
	self expectTerminator.
	context := context postDoctypeDeclarationContext.

	driver handleEndDTD.