accessing
outputElements: anExpansionNode
	"The ExpansionNodes that form the output collections of the ExpansionRegion."
	self outputElements
		removeAll;
		addAll: anExpansionNode