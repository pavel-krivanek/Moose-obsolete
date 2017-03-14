basic examples
modifyingWizardStructureInCallbacksUsing: aMerlinRenderer

	"self modifyingWizardStructureInCallbacks"
	|wizard|
	wizard := WizardControl new.
	wizard renderer: aMerlinRenderer.
	wizard addPane: (
		WizardFirstPane new
			row: (
				DropListPart new
					inGroupboxNamed: 'How many checkboxes to you want to see ?';
					list: #(1 2 3 4 5);
					callback: [:number |
						|secondPane|
						wizard wizardPanes size > 1 ifTrue: [
							wizard removePaneAt: 2
							].
						secondPane := WizardLastPane new.
						(1 to: number) do: [:index | 
							secondPane row: CheckboxPart new.
							].
						wizard addPane: secondPane.
						];
					yourself
			)
	).
	wizard open.