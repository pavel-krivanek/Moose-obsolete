accessing
name: aName namespaceURI: aURI
	"Renames the element and also declares a namespace URI in one step. If aName
	is qualified, then it declares the prefix to be mapped to aURI. If aName has
	no prefix, then aURI is declared as the default namespace URI."

	self
		declarePrefix: (aName xmlPrefixBeforeLocalName) uri: aURI;
		name: aName