accessing
inGroups: anActivityGroup
	"ActivityGroups containing the ActivityEdge."
	self inGroups
		removeAll;
		addAll: anActivityGroup