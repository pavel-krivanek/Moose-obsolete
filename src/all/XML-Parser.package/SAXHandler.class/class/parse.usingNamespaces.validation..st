parsing
parse: aStringOrStream usingNamespaces: aNamespaceBoolean validation: aValidationBoolean
	"Parses the document in the string or stream argument possibly with namespace
	checking (default) and validation (default) enabled."

	^ (self on: aStringOrStream)
		usesNamespaces: aNamespaceBoolean;
		isValidating: aValidationBoolean;
		parseDocument