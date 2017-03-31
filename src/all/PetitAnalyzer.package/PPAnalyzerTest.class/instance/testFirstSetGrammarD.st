testing-firstset
testFirstSetGrammarD
	| grammar |
	grammar := self grammarD.
	self assert: (grammar at: #S) firstSet includes: 'ab' epsilon: false.
	self assert: (grammar at: #A) firstSet includes: 'ab' epsilon: false.
	self assert: (grammar at: #B) firstSet includes: 'a' epsilon: false.
	self assert: (grammar at: #a) firstSet includes: 'a' epsilon: false.
	self assert: (grammar at: #b) firstSet includes: 'b' epsilon: false