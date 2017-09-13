accessing
source: aVertex
	"Designates the originating Vertex (State or Pseudostate) of the Transition."
	source := OPUMLToOneLink
		on: self identity
		update: #outgoings
		from: source
		to: aVertex