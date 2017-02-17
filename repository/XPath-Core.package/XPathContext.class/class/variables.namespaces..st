instance creation
variables: aVariableAssociationCollection namespaces: aNamepsaceAssociationCollection
	^ self new
		variables: aVariableAssociationCollection;
		declareNamespaces: aNamepsaceAssociationCollection