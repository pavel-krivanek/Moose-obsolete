instance creation
name: aQualifiedName namespaces: anAssociationCollection
	"Returns a new element with the specified name and namespaces.

	If aQualifiedName has a prefix, then anAssociationCollection must contain
	an association for it or a namespace exception will be thrown.

	The anAssociationCollection argument can be a dictionary or any collection
	of associations. An association with an empty string key sets the default
	namespace."

	^ self new
		declareNamespaces: anAssociationCollection;
		name: aQualifiedName