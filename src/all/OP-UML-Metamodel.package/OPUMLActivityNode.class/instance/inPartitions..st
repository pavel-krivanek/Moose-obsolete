accessing
inPartitions: anActivityPartition
	"ActivityPartitions containing the ActivityNode."
	self inPartitions
		removeAll;
		addAll: anActivityPartition