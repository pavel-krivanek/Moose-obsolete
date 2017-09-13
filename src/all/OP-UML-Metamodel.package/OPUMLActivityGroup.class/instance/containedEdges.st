accessing
containedEdges
	"ActivityEdges immediately contained in the ActivityGroup."
	^ containedEdges ifNil: [ containedEdges := OPUMLManyToManyLinks on: self identity opposite: #inGroups ]