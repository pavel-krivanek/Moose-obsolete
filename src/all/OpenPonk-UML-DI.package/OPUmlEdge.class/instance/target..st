accessing
target: aDiagramElement
	target := FMMultivalueLink
		on: self
		update: #targetEdges
		from: self target
		to: aDiagramElement