private - utilities
createImportingContext
	<lint: 'String concatenation instead of streams' rationale: 'few concatenations' author: 'cyrille.delaunay'>
	"return an object ImportingContext coorresponding to the context selected by the user and the choice of merging or not classes and metaclasses "
	| tmpImportingContext |
	tmpImportingContext := MooseImportingContext new.
	((wizardInformations at: #contextToImport) select: [:anAssoc | anAssoc value = true] thenCollect: [:each | each key]) do: [ :each | tmpImportingContext perform: (#import , each) asSymbol ].
	(wizardInformations at: #mergeClassMetaclass)  ifTrue: [ tmpImportingContext mergeClassAndMetaclass ].
	(wizardInformations at: #importSubclasses) 
		ifTrue: [ tmpImportingContext importSubclasses ]
		ifFalse: [ tmpImportingContext doNotImportSubclasses].
	(wizardInformations at: #computeTypeOfAttributes) ifTrue: [tmpImportingContext computeTypeOfAttributes].
	^ tmpImportingContext