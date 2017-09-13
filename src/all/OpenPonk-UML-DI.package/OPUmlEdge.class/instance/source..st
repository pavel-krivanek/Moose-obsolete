accessing
source: aDiagramElement
	source := FMMultivalueLink
		on: self
		update: #sourceEdges
		from: self source
		to: aDiagramElement