tokenizing - dtd
nextEndDoctypeDeclaration
	self expectTerminator.
	state := state postDoctypeDeclarationState.

	driver handleEndDTD.