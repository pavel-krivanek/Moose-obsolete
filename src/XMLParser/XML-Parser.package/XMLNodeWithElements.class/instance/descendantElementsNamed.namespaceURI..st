accessing
descendantElementsNamed: aName namespaceURI: aURI
	"returns a node list of all descendant elements whose qualified
	or local names match aName and whose namespace URIs match aURI"

	^ self descendantElementsSelect: [:each |
		(each isNamed: aName)
			and: [each namespaceURI = aURI]]