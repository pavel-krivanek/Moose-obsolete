tests
testClassForElementIfNone
	| mapper |

	mapper := self newMapper.
	self assert:
		(mapper
			classForElement: 'test'
			ifNone: [#none]) == #none.
	self assert:
		(mapper
			classForElement: 'prefix:test'
			ifNone: [#none]) == #none.

	mapper
		mapElement: 'test'
		toClass: self elementClass.
	self assert:
		(mapper
			classForElement: 'test'
			ifNone: [self fail]) == self elementClass.
	self assert:
		(mapper
			classForElement: 'prefix:test'
			ifNone: [self fail]) == self elementClass.

	mapper
		mapElement: 'test'
		attributeSpec: self attributes asXMLAttributeSpec
		toClass: self otherElementClass.
	self assert:
		(mapper
			classForElement: 'test'
			ifNone: [self fail]) == self elementClass.
	self assert:
		(mapper
			classForElement: 'prefix:test'
			ifNone: [self fail]) == self elementClass.

	mapper
		mapElement: 'test'
		namespaceURI: 'testNS'
		toClass: self otherElementClass.
	self assert:
		(mapper
			classForElement: 'test'
			ifNone: [self fail]) == self elementClass.
	self assert:
		(mapper
			classForElement: 'prefix:test'
			ifNone: [self fail]) == self elementClass.

	mapper
		mapElement: 'test'
		namespaceURI: 'testNS'
		attributeSpec: self attributes asXMLAttributeSpec
		toClass: self otherElementClass.
	self assert:
		(mapper
			classForElement: 'test'
			ifNone: [self fail]) == self elementClass.
	self assert:
		(mapper
			classForElement: 'prefix:test'
			ifNone: [self fail]) == self elementClass.

	"QName mappings should take precedence over NCName mappings"
	mapper
		mapElement: 'prefix:test'
		toClass: self otherElementClass.
	self assert:
		(mapper
			classForElement: 'test'
			ifNone: [self fail]) == self elementClass.
	self assert:
		(mapper
			classForElement: 'prefix:test'
			ifNone: [self fail]) == self otherElementClass.