tests
testMapElementNamespaceURIAttributeSpecToClass
	| mapper |

	mapper := self newMapper.
	self assert:
		(mapper
			mapElement: 'test'
			namespaceURI: 'testNS'
			attributeSpec: self attributes asXMLAttributeSpec
			toClass: self elementClass) == mapper.
	self assert:
		(mapper
			classForElement: 'test'
			namespaceURI: 'testNS'
			attributes: self attributes) == self elementClass.

	self assert:
		(mapper
			mapElement: 'test'
			namespaceURI: 'testNS'
			attributeSpec: self attributes asXMLAttributeSpec
			toClass: self otherElementClass) == mapper.
	self assert:
		(mapper
			classForElement: 'test'
			namespaceURI: 'testNS'
			attributes: self attributes) == self otherElementClass.