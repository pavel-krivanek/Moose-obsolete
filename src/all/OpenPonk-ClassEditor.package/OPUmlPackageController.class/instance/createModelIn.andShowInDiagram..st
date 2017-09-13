construction
createModelIn: aPackageController andShowInDiagram: aDiagramController
	model := self createModel.
	aDiagramController model packagedElements add: model.
	aDiagramController addController: self.
	self showInDiagram: aDiagramController