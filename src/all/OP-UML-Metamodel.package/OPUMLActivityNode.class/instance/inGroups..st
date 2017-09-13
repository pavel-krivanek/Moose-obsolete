accessing
inGroups: anActivityGroup
	"ActivityGroups containing the ActivityNode."
	self inGroups
		removeAll;
		addAll: anActivityGroup