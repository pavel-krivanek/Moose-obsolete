running
setUp

	| importTask importer |
	model := MooseModel new.
	model sourceLanguage: ( FAMIXSmalltalkSourceLanguage new ).

	importTask := MooseImportClassesTask new.
	importTask importerClass: SmalltalkImporter.
	importTask importingContext: (MooseImportingContext new 
											importClass ; importAttribute ; importMethod ; 
											mergeClassAndMetaclass ; yourself).
	importTask addClass: LANNode.
	importer := importTask run.

	famixClass := importer classes at: LANNode.
	model add: famixClass.
	model addAll: famixClass methods.
	
	famixClass := model allClasses first.
