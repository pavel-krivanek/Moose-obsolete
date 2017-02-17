tests
testClassForElementNamespaceURIIfNone
	| mapper |

	mapper := self newMapper.
	self assert:
		(mapper
			classForElement: 'test'
			namespaceURI: 'testNS'
			ifNone: [#none]) == #none.
	self assert:
		(mapper
			classForElement: 'prefix:test'
			namespaceURI: 'testNS'
			ifNone: [#none]) == #none.

	mapper
		mapElement: 'test'
		toClass: self otherElementClass.
	self assert:
		(mapper
			classForElement: 'test'
			namespaceURI: 'testNS'
			ifNone: [self fail]) == self otherElementClass.
	self assert:
		(mapper
			classForElement: 'prefix:test'
			namespaceURI: 'testNS'
			ifNone: [self fail]) == self otherElementClass.

	mapper
		mapElement: 'test'
		attributeSpec: self attributes asXMLAttributeSpec
		toClass: self otherElementClass.
	self assert:
		(mapper
			classForElement: 'test'
			namespaceURI: 'testNS'
			ifNone: [self fail]) == self otherElementClass.
	self assert:
		(mapper
			classForElement: 'prefix:test'
			namespaceURI: 'testNS'
			ifNone: [self fail]) == self otherElementClass.

	mapper
		mapElement: 'test'
		namespaceURI: 'testNS'
		toClass: self elementClass.
	self assert:
		(mapper
			classForElement: 'test'
			namespaceURI: 'testNS'
			ifNone: [self fail]) == self elementClass.
	self assert:
		(mapper
			classForElement: 'prefix:test'
			namespaceURI: 'testNS'
			ifNone: [self fail]) == self elementClass.

	mapper
		mapElement: 'test'
		namespaceURI: 'testNS'
		attributeSpec: self attributes asXMLAttributeSpec
		toClass: self otherElementClass.
	self assert:
		(mapper
			classForElement: 'test'
			namespaceURI: 'testNS'
			ifNone: [self fail]) == self elementClass.
	self assert:
		(mapper
			classForElement: 'prefix:test'
			namespaceURI: 'testNS'
			ifNone: [self fail]) == self elementClass.

	"QName mappings should take precedence over NCName mappings"
	mapper
		mapElement: 'prefix:test'
		namespaceURI: 'testNS'
		toClass: self otherElementClass.
	self assert:
		(mapper
			classForElement: 'test'
			namespaceURI: 'testNS'
			ifNone: [self fail]) == self elementClass.
	self assert:
		(mapper
			classForElement: 'prefix:test'
			namespaceURI: 'testNS'
			ifNone: [self fail]) == self otherElementClass.