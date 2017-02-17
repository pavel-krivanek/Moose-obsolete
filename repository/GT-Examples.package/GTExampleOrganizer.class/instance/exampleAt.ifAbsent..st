TODO
exampleAt: aCompiledMethod ifAbsent: aBlock
	^ self exampleAtClass: aCompiledMethod methodClass selector: aCompiledMethod selector ifAbsent: aBlock