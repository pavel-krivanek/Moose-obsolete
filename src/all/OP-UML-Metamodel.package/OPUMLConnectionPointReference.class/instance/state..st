accessing
state: aState
	"The State in which the ConnectionPointReference is defined."
	state := OPUMLToOneLink
		on: self identity
		update: #connections
		from: state
		to: aState