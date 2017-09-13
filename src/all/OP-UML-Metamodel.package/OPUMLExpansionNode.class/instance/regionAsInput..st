accessing
regionAsInput: anExpansionRegion
	"The ExpansionRegion for which the ExpansionNode is an input."
	regionAsInput := OPUMLToOneLink
		on: self identity
		update: #inputElements
		from: regionAsInput
		to: anExpansionRegion