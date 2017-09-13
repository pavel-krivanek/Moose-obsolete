accessing
inStructuredNode: aStructuredActivityNode
	"The StructuredActivityNode containing the ActvityNode, if it is directly owned by a StructuredActivityNode."
	inStructuredNode := OPUMLToOneLink
		on: self identity
		update: #nodes
		from: inStructuredNode
		to: aStructuredActivityNode