rendering
renderFigureIn: aView
	diagramElement := self createDiagramElement.
	diagramElement
		ends:
			{diagramController diagramElementForModel: self model memberEnds first type.
			diagramController diagramElementForModel: self model memberEnds second type}.
	diagramElement renderIn: aView.
	diagramController figureAdded: self figure.
	self refreshFigure