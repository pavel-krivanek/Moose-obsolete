figures
createDiagramElement
	^ OPUmlPackageCompartmentableShape new
		modelElement: self model;
		in: [ :shape | 
			shape style
				fillColor: Color white;
				fontColor: Color black ];
		yourself