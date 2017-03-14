actions
validateImportation

	| mooseModel wizardMessagePane |
	"["
	mooseModel := MooseModel new 
		importFromMSEStream:
						(StandardFileStream readOnlyFileNamed: (wizardInformations at: #mseFilePath)) 
		filteredBy: ( self createImportingContext).
	mooseModel install.

	"]

		on: Error 
		do: [:ex |
			wizardMessagePane:= WizardMessagePane new. 
			wizardMessagePane addPart: (TextDisplayPart forText:'Invalid MSE file caued Error:  ', ex description)  associatedTo: nil.
			self addPane: wizardMessagePane .
			wizardMessagePane open.
			]."