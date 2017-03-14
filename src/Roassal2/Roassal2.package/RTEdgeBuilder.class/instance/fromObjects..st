accessing
fromObjects: someObjectsOrABlock
	"Identify the elements we are considering for the edge building process. Note that the view has to be set beforehand."
	self assert: [ viewHasBeenManuallySet ] description: 'A view has to be set, please use #view:'.
	 
	(someObjectsOrABlock isCollection and: [ someObjectsOrABlock isSymbol not ])
		ifTrue: [ self fromElements: (view elementsFromModels: someObjectsOrABlock) ]
		ifFalse: [ self fromElements: (view elements select: [ :el | someObjectsOrABlock rtValue: el model ]) ]