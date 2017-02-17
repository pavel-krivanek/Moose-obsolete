parsing
parse: aStringOrStream usingNamespaces: aNamespaceBoolean validation: aValidationBoolean externalEntities: anEntityResolutionBoolean
	"Parses the document in the string or stream argument possibly with namespace
	checking (default), validation (default), or external entity resolution (not
	default) enabled."

	^ (self on: aStringOrStream)
		usesNamespaces: aNamespaceBoolean;
		isValidating: aValidationBoolean;
		resolvesExternalEntities: anEntityResolutionBoolean;
		parseDocument