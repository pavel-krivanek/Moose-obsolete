testing-cycleset
testCycleSetGrammarE
	| grammar cycleSet |
	grammar := self grammarE.
	cycleSet := grammar cycleSet.
	self assert: cycleSet size equals: 1.
	self assert: (cycleSet includes: grammar)