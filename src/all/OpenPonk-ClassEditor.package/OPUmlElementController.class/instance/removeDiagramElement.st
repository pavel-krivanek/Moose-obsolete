figures
removeDiagramElement
	self diagramController deselectAll.
	diagramElement view
		ifNotNil: [ 
			diagramElement remove.
			diagramElement := nil ]