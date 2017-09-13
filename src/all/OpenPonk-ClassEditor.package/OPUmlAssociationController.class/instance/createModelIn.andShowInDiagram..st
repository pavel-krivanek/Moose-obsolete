construction
createModelIn: aTargetController andShowInDiagram: aDiagramController
	| sourceProp targetProp |
	model := self createModel.
	(sourceProp := OPUMLProperty new)
		owningClass: aTargetController model;
		name: sourceController model name uncapitalized;
		type: sourceController model.
	(targetProp := OPUMLProperty new)
		owningClass: sourceController model;
		name: aTargetController model name uncapitalized;
		type: aTargetController model.
	model memberEnds
		add: sourceProp;
		add: targetProp.
	aDiagramController addController: self.
	self showInDiagram: aDiagramController