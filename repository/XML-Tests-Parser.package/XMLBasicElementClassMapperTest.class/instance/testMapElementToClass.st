tests
testMapElementToClass
	| mapper |

	mapper := self newMapper.
	self assert:
		(mapper
			mapElement: 'test'
			toClass: self elementClass) == mapper.
	self assert: (mapper classForElement: 'test') == self elementClass.

	self assert:
		(mapper
			mapElement: 'test'
			toClass: self otherElementClass) == mapper.
	self assert: (mapper classForElement: 'test') == self otherElementClass.