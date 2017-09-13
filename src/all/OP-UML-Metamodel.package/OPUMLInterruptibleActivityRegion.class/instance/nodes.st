accessing
nodes
	"ActivityNodes immediately contained in the InterruptibleActivityRegion."
	^ nodes ifNil: [ nodes := OPUMLManyToManyLinks on: self identity opposite: #inInterruptibleRegions ]