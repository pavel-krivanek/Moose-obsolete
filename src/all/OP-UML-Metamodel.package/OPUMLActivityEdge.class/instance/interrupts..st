accessing
interrupts: anInterruptibleActivityRegion
	"The InterruptibleActivityRegion for which this ActivityEdge is an interruptingEdge."
	interrupts := OPUMLToOneLink
		on: self identity
		update: #interruptingEdges
		from: interrupts
		to: anInterruptibleActivityRegion