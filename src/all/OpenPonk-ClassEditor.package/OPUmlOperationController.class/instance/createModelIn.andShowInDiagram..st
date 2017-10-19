construction
createModelIn: aClassifierController andShowInDiagram: aDiagramController
	| newModel |
	newModel := self modelClass new.
	newModel name: 'operation'.
	self model: newModel.
	aClassifierController model ownedOperations add: model.
	aDiagramController addController: self.
	self showInDiagram: aDiagramController