accessing
interruptingEdges
	"The ActivityEdges leaving the InterruptibleActivityRegion on which a traversing token will result in the termination of other tokens flowing in the InterruptibleActivityRegion."
	^ interruptingEdges ifNil: [ interruptingEdges := OPUMLToManyLinks on: self identity opposite: #interrupts: ]