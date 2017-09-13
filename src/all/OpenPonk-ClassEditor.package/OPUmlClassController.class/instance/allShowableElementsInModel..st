rendering
allShowableElementsInModel: aClassModel
	| queue |
	queue := OrderedCollection new.
	queue addAll: aClassModel ownedAttributes.
	queue addAll: aClassModel ownedOperations.
	^ queue asArray select: [ :each | diagramController hasSupportForModel: each ]