removing
removeShapesSuchAs: aBlock
	"Remove all the shapes such as aBlock evaluated with the shape is true"
	shapeAndOffsets := shapeAndOffsets reject: [ :tupple | aBlock rtValue: tupple first ]