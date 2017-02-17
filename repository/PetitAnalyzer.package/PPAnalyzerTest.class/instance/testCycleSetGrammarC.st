testing-cycleset
testCycleSetGrammarC
	| grammar cycleSet |
	grammar := self grammarC.
	cycleSet := grammar cycleSet.
	self assert: cycleSet size equals: 2.
	self assert: (cycleSet includes: grammar)