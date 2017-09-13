accessing
incomings
	"Specifies the Transitions entering this Vertex."
	^ incomings ifNil: [ incomings := OPUMLToManyLinks on: self identity opposite: #target: ]