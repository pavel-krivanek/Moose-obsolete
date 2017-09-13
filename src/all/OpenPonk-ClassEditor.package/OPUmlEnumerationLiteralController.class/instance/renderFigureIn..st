figures
renderFigureIn: aView
	diagramElement := self createDiagramElement.
	diagramElement
		owningElement: (diagramController controllerForModel: model enumeration) diagramElement attributes.
	diagramElement renderIn: aView.
	diagramController figureAdded: self figure.
	self refreshFigure