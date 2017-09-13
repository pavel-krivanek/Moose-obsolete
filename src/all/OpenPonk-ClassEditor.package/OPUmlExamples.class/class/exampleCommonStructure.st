examples
exampleCommonStructure
	| uml cs |
	uml := OPUMLXMISpecsStorage umlMetamodel.
	cs := uml packagedElements
		detect: [ :each | each name = 'CommonStructure' ].
	^ OPProject openOnModel: cs