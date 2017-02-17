hooks
initializeElement: aView
	| allModels referenceElements |
	allModels := (aView elements collect: #model) asArray.
	referenceElements := referenceView elementsFromModels: allModels.
	referenceModels := referenceElements collect: #model.
	(aView elementsFromModels: referenceModels) with: referenceElements do: [ :e1 :e2 | self translate: e1 toPositionOf: e2 ].
	self afterTranslationDoActionOn: aView
