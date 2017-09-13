figures
renderFigureIn: aView
	| sourceElement |
	diagramElement := self createDiagramElement.
	sourceElement := ((diagramController controllers
		select: [ :each | each isKindOf: OPUmlClassController ])
		detect: [ :each | each model generalizations includes: self model ]) diagramElement.
	"	diagramElement source: (diagramController diagramElementForModel: self model specific)."
	diagramElement source: sourceElement.
	diagramElement target: (diagramController diagramElementForModel: self model general).
	diagramElement renderIn: aView.
	diagramController figureAdded: self figure.
	self refreshFigure