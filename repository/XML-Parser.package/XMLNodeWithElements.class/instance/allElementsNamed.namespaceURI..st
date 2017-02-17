accessing
allElementsNamed: aName namespaceURI: aURI
	"returns a node list with all descendant elements (and the receiver if
	it's an element) whose qualified or local names match aName and whose
	namespace URIs matches aURI"

	^ self allElementsSelect: [:each |
		(each isNamed: aName)
			and: [each namespaceURI = aURI]]