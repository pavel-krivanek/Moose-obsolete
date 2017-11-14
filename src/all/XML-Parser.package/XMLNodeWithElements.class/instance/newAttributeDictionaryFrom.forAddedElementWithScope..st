private
newAttributeDictionaryFrom: anAssociationCollection forAddedElementWithScope: aNamespaceScope
	^ self usesNamespaces
		ifTrue: [
			(XMLNamespacedAttributeDictionary newFrom: anAssociationCollection)
				setNamespaceScope: aNamespaceScope]
		ifFalse: [XMLAttributeDictionary newFrom: anAssociationCollection]