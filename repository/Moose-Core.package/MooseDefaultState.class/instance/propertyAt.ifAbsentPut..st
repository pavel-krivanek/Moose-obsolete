accessing properties
propertyAt: name ifAbsentPut: aBlock 
	 
	^ propertyCache  at: name ifAbsentPut: aBlock.
