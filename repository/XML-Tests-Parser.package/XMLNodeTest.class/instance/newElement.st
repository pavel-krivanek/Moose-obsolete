instance creation
newElement
	^ self elementClass
		name: 'test'
		namespaces: self namespaceAssociations