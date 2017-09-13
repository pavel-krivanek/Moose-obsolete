accessing
container: aRegion
	"Designates the Region that owns this Transition."
	container := OPUMLToOneLink
		on: self identity
		update: #transitions
		from: container
		to: aRegion