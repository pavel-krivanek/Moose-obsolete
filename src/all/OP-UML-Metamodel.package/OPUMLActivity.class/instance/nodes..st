accessing
nodes: anActivityNode
	"ActivityNodes coordinated by the Activity."
	self nodes
		removeAll;
		addAll: anActivityNode