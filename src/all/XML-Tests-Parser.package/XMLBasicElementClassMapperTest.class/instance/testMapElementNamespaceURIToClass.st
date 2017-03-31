tests
testMapElementNamespaceURIToClass
	| mapper |

	mapper := self newMapper.
	self assert:
		(mapper
			mapElement: 'test'
			namespaceURI: 'testNS'
			toClass: self elementClass) == mapper.
	self assert:
		(mapper
			classForElement: 'test'
			namespaceURI: 'testNS') == self elementClass.

	self assert:
		(mapper
			mapElement: 'test'
			namespaceURI: 'testNS'
			toClass: self otherElementClass) == mapper.
	self assert:
		(mapper
			classForElement: 'test'
			namespaceURI: 'testNS') == self otherElementClass.