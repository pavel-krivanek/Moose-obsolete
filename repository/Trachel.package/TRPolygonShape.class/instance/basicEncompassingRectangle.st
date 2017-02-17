accessing
basicEncompassingRectangle
	"Return the bounding box of all the vertices."

	self numberOfVertices = 0
		ifTrue: [ ^ 0 @ 0 corner: 0 @ 0 ].
	^ vertices min corner: vertices max