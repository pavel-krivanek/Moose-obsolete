handling
handleElement: anElementName attributes: aCollectionOrAttributeSpec withClass: aClass
	"aCollectionOrAttributeSpec can be some kind of XMLAttributeSpec or a
	collection of associations of required attribute names and values, and the
	required values can be strings, blocks, or nil meaning the attribute is
	required but can take any value"

	elementClassMapper
		mapElement: anElementName
		attributeSpec: aCollectionOrAttributeSpec asXMLAttributeSpec
		toClass: aClass