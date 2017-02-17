searching
findElementNamed: aName namespaceURI: aURI
	"searches the receiver and all descendants for the first element whose
	qualified or local name matches aName and whose namespace URI matches aURI"

	^ self allElementsDetect: [:each |
		(each isNamed: aName)
			and: [each namespaceURI = aURI]]