accessing
state: aState
	"The State that owns the Region. If a Region is owned by a State, then it cannot also be owned by a StateMachine."
	state := OPUMLToOneLink
		on: self identity
		update: #regions
		from: state
		to: aState