accessing
regionAsOutput: anExpansionRegion
	"The ExpansionRegion for which the ExpansionNode is an output."
	regionAsOutput := OPUMLToOneLink
		on: self identity
		update: #outputElements
		from: regionAsOutput
		to: anExpansionRegion