adding
addElementNamed: aName namespaceURI: aURI
	"adds and returns a new element with the specified name and namespace
	URI"

	| addedElementNamespaceScope addedElement |

	addedElementNamespaceScope :=
		self
			newNamespaceScopeForAddedElementNamed: aName
			namespaceURI: aURI.
	"added first to inherit the config before setting the name"
	addedElement :=
		self addNode:
			((self nodeFactory
				classForElement: aName
				namespaceURI: aURI) new
				setNamespaceScope: addedElementNamespaceScope).
	^ addedElement name: aName.