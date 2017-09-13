figures
createDiagramElement
	^ OPUmlLabel new
		modelElement: self model;
		text: [ :aModel | aModel name ];
		localStyle: OPUmlStyle new;
		yourself