searching
findElementNamed: aName
	"searches the receiver and all descendants for the first element whose
	qualified or local name matches aName"

	^ self allElementsDetect: [:each | each isNamed: aName]