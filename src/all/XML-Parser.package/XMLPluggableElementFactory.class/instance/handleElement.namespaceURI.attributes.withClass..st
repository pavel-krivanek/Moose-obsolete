handling
handleElement: anElementName namespaceURI: aURI attributes: aCollectionOrAttributeSpec withClass: aClass
	"aCollectionOrAttributeSpec can be some kind of XMLAttributeSpec or a
	collection of associations of required attribute names and values, and the
	required values can be strings, blocks, or nil meaning the attribute is
	required but can take any value"

	elementClassMapper
		mapElement: anElementName
		namespaceURI: aURI
		attributeSpec: aCollectionOrAttributeSpec asXMLAttributeSpec
		toClass: aClass