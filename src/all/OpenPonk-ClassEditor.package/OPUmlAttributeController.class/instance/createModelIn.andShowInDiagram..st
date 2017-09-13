construction
createModelIn: aClassifierController andShowInDiagram: aDiagramController
	| newModel |
	newModel := self modelClass new.
	newModel name: 'attribute'.
	model := newModel.
	aClassifierController model ownedAttributes add: model.
	aDiagramController addController: self.
	self showInDiagram: aDiagramController