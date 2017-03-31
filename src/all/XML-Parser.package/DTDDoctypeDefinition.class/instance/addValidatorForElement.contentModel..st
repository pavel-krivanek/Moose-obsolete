adding
addValidatorForElement: anElement contentModel: aContentModel
	(self elementValidators includesKey: anElement)
		ifTrue: [^ nil].
	^ self elementValidators
		at: anElement
		put:
			((DTDContentModelParser parserClassForContentModel: aContentModel)
				element: anElement
				contentModel: aContentModel) parse.