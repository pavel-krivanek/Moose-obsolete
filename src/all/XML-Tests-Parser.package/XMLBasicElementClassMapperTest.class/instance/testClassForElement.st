tests
testClassForElement
	| mapper |

	mapper := self newMapper.
	self
		assert: (mapper classForElement: 'test') isNil;
		assert: (mapper classForElement: 'prefix:test') isNil.

	mapper
		mapElement: 'test'
		toClass: self elementClass.
	self
		assert: (mapper classForElement: 'test') == self elementClass;
		assert: (mapper classForElement: 'prefix:test') == self elementClass.

	mapper
		mapElement: 'test'
		attributeSpec: self attributes asXMLAttributeSpec
		toClass: self otherElementClass.
	self
		assert: (mapper classForElement: 'test') == self elementClass;
		assert: (mapper classForElement: 'prefix:test') == self elementClass.

	mapper
		mapElement: 'test'
		namespaceURI: 'testNS'
		toClass: self otherElementClass.
	self
		assert: (mapper classForElement: 'test') == self elementClass;
		assert: (mapper classForElement: 'prefix:test') == self elementClass.

	mapper
		mapElement: 'test'
		namespaceURI: 'testNS'
		attributeSpec: self attributes asXMLAttributeSpec
		toClass: self otherElementClass.
	self
		assert: (mapper classForElement: 'test') == self elementClass;
		assert: (mapper classForElement: 'prefix:test') == self elementClass.

	"QName mappings should take precedence over NCName mappings"
	mapper
		mapElement: 'prefix:test'
		toClass: self otherElementClass.
	self
		assert: (mapper classForElement: 'test') == self elementClass;
		assert: (mapper classForElement: 'prefix:test') == self otherElementClass.