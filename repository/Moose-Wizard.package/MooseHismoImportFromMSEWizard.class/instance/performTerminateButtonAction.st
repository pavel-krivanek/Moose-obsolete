wizard panes transition
performTerminateButtonAction
	
	super performTerminateButtonAction.
	
	hismoImporter hismoModelName: self hismoModelName.
	hismoImporter importingContext: self importingContext.
	
	(selectedImporting = #manually) 
		ifTrue: [self terminateManualImporting ]
		ifFalse: [self terminateAutomaticImporting ]