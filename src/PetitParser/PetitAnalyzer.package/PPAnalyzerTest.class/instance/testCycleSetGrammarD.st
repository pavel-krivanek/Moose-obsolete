testing-cycleset
testCycleSetGrammarD
	| grammar cycleSet |
	grammar := self grammarD.
	cycleSet := (grammar at: #S) cycleSet.
	self assert: cycleSet size equals: 4.
	self assert: (cycleSet includes: (grammar at: #A)).
	self assert: (cycleSet includes: (grammar at: #S)).
	cycleSet := (grammar at: #A) cycleSet.
	self assert: cycleSet size equals: 4.
	self assert: (cycleSet includes: (grammar at: #A)).
	self assert: (cycleSet includes: (grammar at: #S)).
	cycleSet := (grammar at: #B) cycleSet.
	self assert: cycleSet size equals: 2.
	self assert: (cycleSet includes: (grammar at: #B))