adding
addElementNamed: aName attributes: anAssociationCollection
	"adds and returns a new element with the specified name and attributes"

	| addedElementNamespaceScope addedElementNamespaceURI addedElementAttributeDictionary addedElement |

	addedElementNamespaceScope := self newNamespaceScopeForAddedElement.
	addedElementNamespaceURI :=
		self
			namespaceURIOfAddedElementNamed: aName
			withScope: addedElementNamespaceScope.
	addedElementAttributeDictionary :=
		self
			newAttributeDictionaryFrom: anAssociationCollection
			forAddedElementWithScope: addedElementNamespaceScope.
	"added first to inherit the config before setting the name and attributes"
	addedElement :=
		self addNode:
			((self nodeFactory
				classForElement: aName
				namespaceURI: addedElementNamespaceURI
				attributes: addedElementAttributeDictionary) new
				setNamespaceScope: addedElementNamespaceScope).
	^ addedElement
		name: aName;
		setAttributes: addedElementAttributeDictionary.