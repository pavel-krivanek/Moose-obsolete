figures
renderFigureIn: aView
	diagramElement := self createDiagramElement.
	diagramElement
		source: (diagramController diagramElementForModel: self model ownedEnd type).
	diagramElement
		target:
			(diagramController
				diagramElementForModel: (self model memberEnds copyWithout: self model ownedEnd) first type).
	diagramElement renderIn: aView.
	diagramController figureAdded: self figure.
	self refreshFigure