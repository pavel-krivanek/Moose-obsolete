accessing
outputElements
	"The ExpansionNodes that form the output collections of the ExpansionRegion."
	^ outputElements ifNil: [ outputElements := OPUMLToManyLinks on: self identity opposite: #regionAsOutput: ]