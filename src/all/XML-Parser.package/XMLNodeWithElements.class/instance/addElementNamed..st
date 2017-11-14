adding
addElementNamed: aName
	"adds and returns a new element with the specified name"

	| addedElementNamespaceScope addedElementNamespaceURI addedElement |

	addedElementNamespaceScope := self newNamespaceScopeForAddedElement.
	addedElementNamespaceURI :=
		self
			namespaceURIOfAddedElementNamed: aName
			withScope: addedElementNamespaceScope.
	"added first to inherit the config before setting the name"
	addedElement :=
		self addNode:
			((self nodeFactory
				classForElement: aName
				namespaceURI: addedElementNamespaceURI) new
				setNamespaceScope: addedElementNamespaceScope).
	^ addedElement name: aName.