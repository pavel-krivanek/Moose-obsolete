accessing
edges
	"The ActivityEdges immediately contained in the StructuredActivityNode."
	^ edges ifNil: [ edges := OPUMLToManyLinks on: self identity opposite: #inStructuredNode: ]