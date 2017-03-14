accessing
container: aContainer
	container := FMMultivalueLink on: self
					update: #comments
					from: self container
					to: aContainer