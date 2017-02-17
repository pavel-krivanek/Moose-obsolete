testing-firstset
testFirstSetGrammarC
	| grammar |
	grammar := self grammarC.
	self assert: grammar firstSet includes: '1' epsilon: false