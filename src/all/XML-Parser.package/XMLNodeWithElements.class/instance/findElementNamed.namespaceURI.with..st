searching
findElementNamed: aName namespaceURI: aURI with: aBlock
	"searches the receiver and all descendants for the first element whose
	qualified or local name matches aName and whose namespace URI matches
	aURI and that aBlock evaluates true for"

	^ self allElementsDetect: [:each |
		(each isNamed: aName)
			and: [each namespaceURI = aURI
				and: [aBlock value: each]]]