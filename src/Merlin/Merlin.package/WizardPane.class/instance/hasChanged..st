actions
hasChanged: aWizardPart
	"this method is used by the sub parts to inform this pane that their output value has changed. Here , we push this value to parts requiring this information"

	| informationValue informationSymbol |
	informationValue := aWizardPart transformedOutputValue.
	informationSymbol := partsAndInformationsAssociated at: aWizardPart ifAbsent: [nil].	
	
	informationSymbol ifNotNil: [
		wizardControl information: informationSymbol withValue: informationValue.
		partsAndRequiredInformations keysAndValuesDo: [:key :value |
			(value includes: informationSymbol)
				ifTrue: [ aWizardPart requiredInputsAt: informationSymbol put: informationValue]]
		]