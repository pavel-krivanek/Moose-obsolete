factory-objects
any
	^self
		cacheAt: #'any'
		ifAbsentPut: [ self
			on: [ :each | true ] message: 'input expected'
			negated: [ :each | false ] message: 'no input expected' ]