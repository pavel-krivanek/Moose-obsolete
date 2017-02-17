instance creation
name: aQualifiedName namespaces: aNamespaceAssociationCollection attributes: anAttributeAssociationCollection
	"Returns a new element with the specified name, namespaces, and attributes.

	If aQualifiedName or one of the attributes has a prefix, then
	aNamespaceAssociationCollection must contain an association for it or a
	namespace exception will be thrown.

	The aNamespaceAssociationCollection and anAttributeAssociationCollection
	arguments can be dictionaries or any collection of associations. An
	association with an empty string key sets the default namespace."

	^ (self
		name: aQualifiedName
		namespaces: aNamespaceAssociationCollection)
			setAttributes: anAttributeAssociationCollection