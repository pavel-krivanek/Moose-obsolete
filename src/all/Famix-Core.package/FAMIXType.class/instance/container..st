accessing
container: aContainerEntity
	container := FMMultivalueLink on: self
					update: #types
					from: self container
					to: aContainerEntity.
	self resetMooseName