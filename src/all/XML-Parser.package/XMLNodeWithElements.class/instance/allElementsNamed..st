accessing
allElementsNamed: aName
	"returns a node list with all descendant elements (and the receiver if
	it's an element) whose qualified or local names match aName"

	^ self allElementsSelect: [:each | each isNamed: aName]