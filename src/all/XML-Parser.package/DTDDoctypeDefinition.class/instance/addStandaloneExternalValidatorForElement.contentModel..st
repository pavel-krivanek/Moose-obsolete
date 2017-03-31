adding
addStandaloneExternalValidatorForElement: anElement contentModel: aContentModel
	(self elementValidators includesKey: anElement)
		ifTrue: [^ nil].
	^ self elementValidators
		at: anElement
		put:
			((DTDContentModelParser parserClassForContentModel: aContentModel)
				standaloneExternalClass
					element: anElement
					contentModel: aContentModel) parse.