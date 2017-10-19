construction
createModelIn: aClassifierController andShowInDiagram: aDiagramController
	| newModel |
	newModel := self modelClass new.
	newModel name: 'literal'.
	self model: newModel.
	aClassifierController model ownedLiterals add: model.
	aDiagramController addController: self.
	self showInDiagram: aDiagramController