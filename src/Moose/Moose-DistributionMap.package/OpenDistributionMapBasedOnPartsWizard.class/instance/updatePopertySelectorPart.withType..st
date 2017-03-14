actions
updatePopertySelectorPart: aWizardPart withType: aFM3Property

	| elementsClass |
	aFM3Property isNil
		ifTrue: [
			(aWizardPart)
				list: {}
			]
		ifFalse: [
			elementsClass := aFM3Property type implementingClass.
			(aWizardPart)
				list: (self allPropertySelectorsForElementOfType: elementsClass)
			]
	