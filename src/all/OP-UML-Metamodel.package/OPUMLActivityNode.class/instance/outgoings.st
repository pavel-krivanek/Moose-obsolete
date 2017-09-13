accessing
outgoings
	"ActivityEdges that have the ActivityNode as their source."
	^ outgoings ifNil: [ outgoings := OPUMLToManyLinks on: self identity opposite: #source: ]