accessing
inInterruptibleRegions
	"InterruptibleActivityRegions containing the ActivityNode."
	^ inInterruptibleRegions ifNil: [ inInterruptibleRegions := OPUMLManyToManyLinks on: self identity opposite: #nodes ]