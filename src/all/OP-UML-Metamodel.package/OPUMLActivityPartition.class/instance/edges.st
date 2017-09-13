accessing
edges
	"ActivityEdges immediately contained in the ActivityPartition."
	^ edges ifNil: [ edges := OPUMLManyToManyLinks on: self identity opposite: #inPartitions ]