activation
activate
	self activateWithoutSaving.
	Smalltalk snapshot: true andQuit: true