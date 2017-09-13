accessing
inGroups
	"ActivityGroups containing the ActivityEdge."
	^ inGroups ifNil: [ inGroups := OPUMLManyToManyLinks on: self identity opposite: #containedEdges ]