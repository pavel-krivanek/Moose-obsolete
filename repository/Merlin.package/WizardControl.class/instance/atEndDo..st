accessing
atEndDo: aBlock

	"this is the way to programatically set an action to execute at the end of the wizard panes transitions. aBlock has to be a 'one-argument' block, refering to the wizardInformations dictionary (linking each output of the wizard to its key)."
	finalActionBlock := aBlock.