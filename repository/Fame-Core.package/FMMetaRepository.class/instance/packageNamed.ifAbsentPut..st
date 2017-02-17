accessing
packageNamed: name ifAbsentPut: aBlock
	^nameDict at: name ifAbsentPut: aBlock