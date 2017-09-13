accessing
containedNodes
	"ActivityNodes immediately contained in the ActivityGroup."
	^ containedNodes ifNil: [ containedNodes := OPUMLManyToManyLinks on: self identity opposite: #inGroups ]