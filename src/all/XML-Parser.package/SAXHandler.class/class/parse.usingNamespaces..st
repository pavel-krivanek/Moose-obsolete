parsing
parse: aStringOrStream usingNamespaces: aBoolean
	"Parses the document in the string or stream argument possibly with namespace
	checking enabled (default)"

	^ (self on: aStringOrStream)
		usesNamespaces: aBoolean;
		parseDocument