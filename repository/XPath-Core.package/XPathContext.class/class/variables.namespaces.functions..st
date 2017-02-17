instance creation
variables: aVariableAssociationCollection namespaces: aNamepsaceAssociationCollection functions: aFunctionSet
	^ self new
		variables: aVariableAssociationCollection;
		declareNamespaces: aNamepsaceAssociationCollection;
		functions: aFunctionSet