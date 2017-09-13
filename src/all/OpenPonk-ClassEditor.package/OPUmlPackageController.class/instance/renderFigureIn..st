rendering
renderFigureIn: aView
	diagramElement := self createDiagramElement.
	diagramElement renderIn: aView.
	diagramController figureAdded: self figure.
	self refreshFigure.
"	self figure @ RTDraggable""SnapToGrid"