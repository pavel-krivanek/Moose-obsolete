adding
addElementNamed: aName
	"adds and returns a new element with the specified name"

	"added first to inherit the config and namespaces
	before setting the name"
	^ (self addNode:
		(self nodeFactory classForElement: aName) new)
			name: aName