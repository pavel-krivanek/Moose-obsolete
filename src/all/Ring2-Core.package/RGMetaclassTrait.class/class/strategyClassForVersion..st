instance creation
strategyClassForVersion: aVersionNumber

	^ (aVersionNumber <= 6)
		ifTrue: [ RGMetaclassTraitStrategy ]
		ifFalse: [ RGMetaclassTraitV2Strategy ]
