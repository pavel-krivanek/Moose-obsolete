figures
createModelIn: aTargetController andShowInDiagram: aDiagramController
	self model: OPUMLGeneralization new.
	model general: aTargetController model.
	model specific: sourceController model.
	aDiagramController addController: self.
	self showInDiagram: aDiagramController