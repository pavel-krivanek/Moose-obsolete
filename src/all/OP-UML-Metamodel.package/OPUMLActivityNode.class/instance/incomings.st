accessing
incomings
	"ActivityEdges that have the ActivityNode as their target."
	^ incomings ifNil: [ incomings := OPUMLToManyLinks on: self identity opposite: #target: ]