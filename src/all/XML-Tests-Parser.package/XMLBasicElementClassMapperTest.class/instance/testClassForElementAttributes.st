tests
testClassForElementAttributes
	| mapper |

	mapper := self newMapper.
	self assert:
		(mapper
			classForElement: 'test'
			attributes: self attributes) isNil.
	self assert:
		(mapper
			classForElement: 'prefix:test'
			attributes: self attributes) isNil.

	mapper
		mapElement: 'test'
		toClass: self otherElementClass.
	self assert:
		(mapper
			classForElement: 'test'
			attributes: self attributes) == self otherElementClass.
		(mapper
			classForElement: 'prefix:test'
			attributes: self attributes) == self otherElementClass.

	mapper
		mapElement: 'test'
		attributeSpec: self attributes asXMLAttributeSpec
		toClass: self elementClass.
	self assert:
		(mapper
			classForElement: 'test'
			attributes: self attributes) == self elementClass.
	self assert:
		(mapper
			classForElement: 'prefix:test'
			attributes: self attributes) == self elementClass.

	mapper
		mapElement: 'test'
		namespaceURI: 'testNS'
		toClass: self otherElementClass.
	self assert:
		(mapper
			classForElement: 'test'
			attributes: self attributes) == self elementClass.
	self assert:
		(mapper
			classForElement: 'prefix:test'
			attributes: self attributes) == self elementClass.

	mapper
		mapElement: 'test'
		namespaceURI: 'testNS'
		attributeSpec: self attributes asXMLAttributeSpec
		toClass: self otherElementClass.
	self assert:
		(mapper
			classForElement: 'test'
			attributes: self attributes) == self elementClass.
	self assert:
		(mapper
			classForElement: 'prefix:test'
			attributes: self attributes) == self elementClass.

	"QName mappings should take precedence over NCName mappings"
	mapper
		mapElement: 'prefix:test'
		attributeSpec: self attributes asXMLAttributeSpec
		toClass: self otherElementClass.
	self assert:
		(mapper
			classForElement: 'test'
			attributes: self attributes) == self elementClass.
	self assert:
		(mapper
			classForElement: 'prefix:test'
			attributes: self attributes) == self otherElementClass.