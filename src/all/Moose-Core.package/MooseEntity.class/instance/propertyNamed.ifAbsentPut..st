properties
propertyNamed: name ifAbsentPut: value 
	 
	^self privateState propertyAt: name ifAbsentPut: value