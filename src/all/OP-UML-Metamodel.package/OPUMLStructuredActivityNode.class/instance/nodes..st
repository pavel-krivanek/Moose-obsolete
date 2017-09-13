accessing
nodes: anActivityNode
	"The ActivityNodes immediately contained in the StructuredActivityNode."
	self nodes
		removeAll;
		addAll: anActivityNode