accessing
nodes
	"The ActivityNodes immediately contained in the StructuredActivityNode."
	^ nodes ifNil: [ nodes := OPUMLToManyLinks on: self identity opposite: #inStructuredNode: ]