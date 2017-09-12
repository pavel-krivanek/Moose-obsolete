tests
testEmpty

	| info | 
	
	info := StatefulTraitsMergedClassInfo on: StatefulTraitsTestingMergedClass.
	self assert: info mergedClass equals: StatefulTraitsTestingMergedClass.
	self assert: info slots isEmpty.
	self assert: info traits isEmpty.

	
	