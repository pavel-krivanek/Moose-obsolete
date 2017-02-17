testing
testInternalDupFragmentGrouping
	self assert: model allFiles size equals: 1.
	self assert: model allDuplications size equals: 3.
	self assert: model allMultiplications size equals: 1.
	self assert: model allFiles first internalFragments size equals: 3.
	self assert: model allFiles first allInternalDuplications size equals: 3.
	self assert: model allFiles first allInternalMultiplications size equals: 1