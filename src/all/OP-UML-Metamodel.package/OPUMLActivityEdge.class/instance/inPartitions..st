accessing
inPartitions: anActivityPartition
	"ActivityPartitions containing the ActivityEdge."
	self inPartitions
		removeAll;
		addAll: anActivityPartition