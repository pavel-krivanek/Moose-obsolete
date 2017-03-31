tests
testMapElementAttributeSpecToClass
	| mapper |

	mapper := self newMapper.
	self assert:
		(mapper
			mapElement: 'test'
			attributeSpec: self attributes asXMLAttributeSpec
			toClass: self elementClass) == mapper.
	self assert:
		(mapper
			classForElement: 'test'
			attributes: self attributes) == self elementClass.

	self assert:
		(mapper
			mapElement: 'test'
			attributeSpec: self attributes asXMLAttributeSpec
			toClass: self otherElementClass) == mapper.
	self assert:
		(mapper
			classForElement: 'test'
			attributes: self attributes) == self otherElementClass.