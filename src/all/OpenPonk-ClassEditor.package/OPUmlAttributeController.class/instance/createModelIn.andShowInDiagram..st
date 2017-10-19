construction
createModelIn: aClassifierController andShowInDiagram: aDiagramController
	| newModel |
	newModel := self modelClass new.
	newModel name: 'attribute'.
	self model: newModel.
	aClassifierController model ownedAttributes add: model.
	aDiagramController addController: self.
	self showInDiagram: aDiagramController