instance creation
newMapperWithMappings
	| mapper |

	mapper := XMLBasicElementClassMapper new.
	mapper
		mapElement: 'test'
		toClass: self elementClass.
	mapper
		mapElement: 'test'
		attributeSpec: self attributes asXMLAttributeSpec
		toClass: self elementClass.
	mapper
		mapElement: 'test'
		namespaceURI: 'testNS'
		toClass: self elementClass.
	mapper
		mapElement: 'test'
		namespaceURI: 'testNS'
		attributeSpec: self attributes asXMLAttributeSpec
		toClass: self elementClass.
	^ mapper.