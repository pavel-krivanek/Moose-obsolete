accessing
inInterruptibleRegions: anInterruptibleActivityRegion
	"InterruptibleActivityRegions containing the ActivityNode."
	self inInterruptibleRegions
		removeAll;
		addAll: anInterruptibleActivityRegion