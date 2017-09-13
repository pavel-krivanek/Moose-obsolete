figures
createDiagramElement
	^ OPUmlClassShape new
		modelElement: self model;
		stereotype: [ #(enumeration) ]