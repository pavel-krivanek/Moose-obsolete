figures
createDiagramElement
	^ OPUmlClassShape new
		stereotype: [ self stereotypeNames ];
		modelElement: self model