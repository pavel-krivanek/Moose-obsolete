window control
populatePartsRemaining

	"Populating a first time all parts may launch some callbacks. Those callbacks can add several parts to the pane, and some of those parts can still have an empty contents. Here we populate all thos remaining empty parts "
	self distributeRequiredInputs. 
	wizardParts  do: [:aWizardPart |
		aWizardPart hasBeenOpen
			ifFalse: [ 
				self distributeRequiredInputsOf: aWizardPart .
				aWizardPart latePopulateContents.
				]
			].
	

	