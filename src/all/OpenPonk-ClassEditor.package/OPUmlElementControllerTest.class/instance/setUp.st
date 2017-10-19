running
setUp
	super setUp.
	controller := self controllerClass new.
	diagramController := OPUmlPackageDiagramController new.
	diagramController model: (OPUMLPackage new name: 'TestPackage').
	diagramController view: RTView new.
	model := self newInstance