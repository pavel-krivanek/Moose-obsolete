accessing
elementsAt: aName namespaceURI: aURI
	"returns a node list of all the receiver's elements whose qualified
	or local names match aName and whose namespace URIs match aURI"

	^ self nodes
		elementsAt: aName
		namespaceURI: aURI