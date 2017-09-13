figures
renderFigureIn: aView
	diagramElement := self createDiagramElement.
	diagramElement
		owningElement: (diagramController diagramElementForModel: model owningClass) operations.
	diagramElement renderIn: aView.
	diagramController figureAdded: self figure.
	self refreshFigure