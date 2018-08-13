instance creation
strategyClassForVersion: aVersionNumber

	^ (aVersionNumber <= 6)
		ifTrue: [ RGTraitStrategy ]
		ifFalse: [ RGTraitV2Strategy ]
