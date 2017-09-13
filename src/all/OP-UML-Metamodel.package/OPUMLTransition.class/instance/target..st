accessing
target: aVertex
	"Designates the target Vertex that is reached when the Transition is taken."
	target := OPUMLToOneLink
		on: self identity
		update: #incomings
		from: target
		to: aVertex