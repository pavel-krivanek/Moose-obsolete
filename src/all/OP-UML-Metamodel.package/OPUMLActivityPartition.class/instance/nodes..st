accessing
nodes: anActivityNode
	"ActivityNodes immediately contained in the ActivityPartition."
	self nodes
		removeAll;
		addAll: anActivityNode