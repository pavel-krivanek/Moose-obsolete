deprecated
addElement: anElement
	self deprecated:
		'Use #addNode: with an element argument or #addElementNamed: instead'.

	self addNode: anElement.
	"returns self for backwards compatibility"