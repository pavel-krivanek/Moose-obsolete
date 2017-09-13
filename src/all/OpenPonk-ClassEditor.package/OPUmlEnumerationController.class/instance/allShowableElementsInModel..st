rendering
allShowableElementsInModel: aClassModel
	| queue |
	queue := OrderedCollection new.
	queue addAll: aClassModel ownedLiterals.
	^ queue asArray select: [ :each | diagramController hasSupportForModel: each ]