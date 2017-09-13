accessing
owningElement: aDiagramElement
	owningElement := FMMultivalueLink
		on: self
		update: #ownedElements
		from: self owningElement
		to: aDiagramElement