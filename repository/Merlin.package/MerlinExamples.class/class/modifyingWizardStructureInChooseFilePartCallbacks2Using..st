basic examples
modifyingWizardStructureInChooseFilePartCallbacks2Using: aRenderer

	"self modifyingWizardStructureInChooseFilePartCallbacks2"
	|wizard filePart|
	wizard := WizardControl new.
	wizard renderer: aRenderer.
	filePart := ChooseFilePart new
					yourself.
					
	wizard addPane: (
		WizardFirstPane new
			row: filePart associatedTo: #path
	).
	wizard addPane: (
		WizardLastPane new
			row: (TextPart new
					defaultValue: [:requiredInputs |
						(requiredInputs at: #path) asString
						]
			) requiring: {#path}
	).
	
	wizard open.