testing-cycleset
testCycleSetGrammarA
	self grammarA do: [ :each | self assert: each cycleSet isEmpty ]