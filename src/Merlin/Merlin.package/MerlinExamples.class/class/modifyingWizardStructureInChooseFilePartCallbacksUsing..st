basic examples
modifyingWizardStructureInChooseFilePartCallbacksUsing: aRenderer

	"self modifyingWizardStructureInChooseFilePartCallbacks"
	|wizard filePart|
	wizard := WizardControl new.
	wizard renderer: aRenderer.
	filePart := ChooseFilePart new
					callback: [:filepath :part|
						|secondPane|
						wizard wizardPanes size > 1 ifTrue: [
							wizard removePaneAt: 2
							].
						secondPane := WizardLastPane new.
						secondPane row: (TextPart new text: filepath asString; yourself).	
						wizard addPane: secondPane.
						];
					yourself.
					
	wizard addPane: (
		WizardFirstPane new
			row: filePart associatedTo: #path
	).
	
	wizard open.