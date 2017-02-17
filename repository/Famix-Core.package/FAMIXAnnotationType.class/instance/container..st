accessing
container: aContainer
	container := FMMultivalueLink
		on: self
		update: #definedAnnotationTypes
		from: self container
		to: aContainer.
	self resetMooseName