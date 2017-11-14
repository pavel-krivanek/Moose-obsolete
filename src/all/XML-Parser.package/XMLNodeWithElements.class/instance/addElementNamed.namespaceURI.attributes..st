adding
addElementNamed: aName namespaceURI: aURI attributes: anAssociationCollection
	"adds and returns a new element with the specified name, namespace URI,
	and attributes"

	| addedElementNamespaceScope addedElementAttributeDictionary addedElement |

	addedElementNamespaceScope :=
		self
			newNamespaceScopeForAddedElementNamed: aName
			namespaceURI: aURI.
	addedElementAttributeDictionary :=
		self
			newAttributeDictionaryFrom: anAssociationCollection
			forAddedElementWithScope: addedElementNamespaceScope.
	"added first to inherit the config before setting the name and attributes"
	addedElement :=
		self addNode:
			((self nodeFactory
				classForElement: aName
				namespaceURI: aURI
				attributes: addedElementAttributeDictionary) new
				setNamespaceScope: addedElementNamespaceScope).
	^ addedElement
		name: aName;
		setAttributes: addedElementAttributeDictionary.