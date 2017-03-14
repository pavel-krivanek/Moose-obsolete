accessing
container: aContainer
	container := FMMultivalueLink 
		on: self
		update: #functions
		from: self container
		to: aContainer