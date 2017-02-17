tests
testImportMethodBody
	"Check if when importing the arguments of the LAN example, methods body are imported as well"

	"This is so since importing arguments implies an import of method body"

	"self debug: #testImportMethodBody"

	| importTask importer context importedClasses famixClassNode nextNodeMethod nameMethod xFormalParameter |
	importTask := MooseImportClassesTask new.
	context := MooseImportingContext new
		importArgument;
		mergeClassAndMetaclass;
		yourself.
	self assert: context shouldImportMethodBody.
	importTask importingContext: context.
	importTask importerClass: SmalltalkImporter.
	self assert: context shouldImportMethod.
	importTask addClass: LANNode.
	importer := importTask run.
	importedClasses := importer classes.	"Imported classes are contained in a dictionary"
	self assert: importedClasses isDictionary.	"Make sure that the node is present, this assertion is probably redundant with other tests"
	self assert: (importedClasses contains: [ :famixClass | famixClass name == #LANNode ]).	"The class node is present, we can now get a reference on it"
	famixClassNode := importedClasses detect: [ :famixClass | famixClass name == #LANNode ].	"The number of methods of the imported class should be the same than the real class _and_ its metaclass (because of the mergeClassAndMetaclass)"
	self deny: famixClassNode methods size = LANNode methodDict size.
	self assert: famixClassNode methods size equals: LANNode methodDict size + LANNode class methodDict size.	"Browser Node>>nextNode to see the code that has been imported"
	nextNodeMethod := famixClassNode methods detect: [ :fm | fm name == #nextNode ].
	self assert: nextNodeMethod parameters isEmpty.
	self assert: nextNodeMethod signature == #'nextNode()'.
	self assert: nextNodeMethod mooseName == #'Smalltalk::LANNode.nextNode()'.
	nameMethod := famixClassNode methods detect: [ :fm | fm name == #name: ].
	self assert: nameMethod parameters size equals: 1.
	xFormalParameter := nameMethod parameters at: 1.
	self assert: xFormalParameter name equals: #aSymbol	"self assert: (xFormalParameter isFormalParameter)."	"The x formal parameter is the first (and only) argument in the method name:"	"Its position is therefore 0"	"self assert: (xFormalParameter position isZero)."