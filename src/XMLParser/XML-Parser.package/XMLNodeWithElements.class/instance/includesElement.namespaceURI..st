testing
includesElement: aName namespaceURI: aURI
	"returns true if the receiver has a child element whose qualified or local name
	matches aName and whose namespace URI matches aURI"

	^ self nodes
		includesElement: aName
		namespaceURI: aURI