searching
findElementNamed: aName with: aBlock
	"searches the receiver and all descendants for the first element whose
	qualified or local name matches aName and aBlock evaluates true for"

	^ self allElementsDetect: [:each |
		(each isNamed: aName)
			and: [aBlock value: each]]