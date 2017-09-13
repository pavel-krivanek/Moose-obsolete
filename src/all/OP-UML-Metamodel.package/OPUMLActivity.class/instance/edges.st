accessing
edges
	"ActivityEdges expressing flow between the nodes of the Activity."
	^ edges ifNil: [ edges := OPUMLToManyLinks on: self identity opposite: #activity: ]