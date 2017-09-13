construction
createModelIn: aTargetController andShowInDiagram: aDiagramController
	| sourceOwnedProp extensionOwnedProp |
	model := self createModel.
	(sourceOwnedProp := OPUMLProperty new)
		owningClass: sourceController model;
		name: 'base_' , aTargetController model name;
		type: aTargetController model.
	(extensionOwnedProp := OPUMLExtensionEnd new)
		name: 'extension_' , sourceController model name;
		type: sourceController model.
	model ownedEnd: extensionOwnedProp.
	model memberEnds
		add: sourceOwnedProp;
		add: extensionOwnedProp.
	aDiagramController addController: self.
	self showInDiagram: aDiagramController