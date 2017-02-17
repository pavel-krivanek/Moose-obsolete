TODO
exampleAt: aCompiledMethod ifAbsentPut: aBlock
	^ self exampleAtClass: aCompiledMethod methodClass selector: aCompiledMethod selector ifAbsentPut: aBlock