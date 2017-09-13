accessing
inStructuredNode: aStructuredActivityNode
	"The StructuredActivityNode containing the ActivityEdge, if it is owned by a StructuredActivityNode."
	inStructuredNode := OPUMLToOneLink
		on: self identity
		update: #edges
		from: inStructuredNode
		to: aStructuredActivityNode