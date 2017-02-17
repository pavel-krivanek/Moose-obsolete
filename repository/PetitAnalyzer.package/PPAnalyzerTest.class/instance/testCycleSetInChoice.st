testing-cycleset
testCycleSetInChoice
	| parser cycleSet |
	parser := PPUnresolvedParser new.
	parser def: parser / $a asParser.
	cycleSet := parser cycleSet.
	self assert: cycleSet size equals: 1.
	self assert: (cycleSet includes: parser).
	parser := PPUnresolvedParser new.
	parser def: $a asParser / parser.
	cycleSet := parser cycleSet.
	self assert: cycleSet size equals: 1.
	self assert: (cycleSet includes: parser)