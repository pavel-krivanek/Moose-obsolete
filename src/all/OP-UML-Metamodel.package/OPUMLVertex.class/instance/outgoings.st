accessing
outgoings
	"Specifies the Transitions departing from this Vertex."
	^ outgoings ifNil: [ outgoings := OPUMLToManyLinks on: self identity opposite: #source: ]