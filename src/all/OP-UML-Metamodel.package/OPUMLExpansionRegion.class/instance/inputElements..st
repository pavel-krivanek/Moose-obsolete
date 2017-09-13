accessing
inputElements: anExpansionNode
	"The ExpansionNodes that hold the input collections for the ExpansionRegion."
	self inputElements
		removeAll;
		addAll: anExpansionNode