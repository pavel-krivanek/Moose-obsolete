figures
renderFigureIn: aView
	diagramElement := self createDiagramElement.
	diagramElement
		owningElement: (diagramController controllerForModel: model owningClass) diagramElement attributes.
	diagramElement renderIn: aView.
	diagramController figureAdded: self figure.
	self refreshFigure