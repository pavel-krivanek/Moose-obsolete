accessing
containedNodes: anActivityNode
	"ActivityNodes immediately contained in the ActivityGroup."
	self containedNodes
		removeAll;
		addAll: anActivityNode