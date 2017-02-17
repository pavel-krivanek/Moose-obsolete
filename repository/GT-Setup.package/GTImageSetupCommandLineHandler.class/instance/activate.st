activation
activate
	"self new activate"
	self activateWithoutSaving.
	Smalltalk snapshot: true andQuit: true