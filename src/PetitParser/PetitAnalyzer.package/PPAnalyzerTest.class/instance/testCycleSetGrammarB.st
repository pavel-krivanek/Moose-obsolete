testing-cycleset
testCycleSetGrammarB
	self grammarB do: [ :each | self assert: each cycleSet isEmpty ]