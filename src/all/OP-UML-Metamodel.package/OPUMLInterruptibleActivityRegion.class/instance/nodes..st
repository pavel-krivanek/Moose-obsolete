accessing
nodes: anActivityNode
	"ActivityNodes immediately contained in the InterruptibleActivityRegion."
	self nodes
		removeAll;
		addAll: anActivityNode